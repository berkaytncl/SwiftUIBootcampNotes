//
//  OnboardingView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 13.10.2023.
//

import SwiftUI

struct OnboardingView: View {

    // Onboarding states:
    /*
    0 - Welcome screen
    1 - Add name
    2 - Add age
    3 - Add gender
    */
    @State var onboardingState: Int = 0
    let transition: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
    
    // onboarding inputs
    @State var name: String = ""
    @State var age: Double = 0
    @State var gender: String = ""
    
    // for the alert
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            // content
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundStyle(.green)
                }
            }
            
            // buttons
            VStack {
                Spacer()
                bottomButton
            }
            .padding(30)
        }
        .alert(alertTitle, isPresented: $showAlert) {
            Button("OK", role: .cancel) {}
        }
    }
}

// MARK: COMPONENTS

extension OnboardingView {
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
                .foregroundStyle(.white)
            Text("Find your match.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .overlay(alignment: .bottom) {
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundStyle(.white)
                }
            Text("This is the #1 app for finding your match online! In this tutorial we are practicing using AppStorage and other SwiftUI techniques.")
                .fontWeight(.medium)
                .foregroundStyle(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addNameSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .clipShape(.capsule)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            Slider(value: $age, in: 18...100, step: 1.0)
                .tint(.white)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            HStack {
                Text("Select a gender")
                    .font(.headline)
                    .foregroundStyle(.purple)
                Spacer()
                Picker(selection: $gender) {
                    Text("Male").tag("Male")
                    Text("Female").tag("Female")
                    Text("Non-Binary").tag("Non-Binary")
                } label: {
                    Text("Select a gender")
                }
                .pickerStyle(MenuPickerStyle())
                .tint(.purple)
            }
            .padding(.horizontal)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .clipShape(.capsule)

            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var bottomButton: some View {
        Text(
            onboardingState == 0 ? "SIGN UP" :            
            onboardingState == 3 ? "FINISH" :
            "NEXT"
        )
            .font(.headline)
            .foregroundStyle(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.white)
            .clipShape(.capsule)
            .animation(nil, value: onboardingState)
            .onTapGesture {
                handleNextButtonPressed()
            }
    }
}

// MARK: FUNCTIONS

extension OnboardingView {
    private func handleNextButtonPressed() {
        // CHECK INPUTS
        switch onboardingState {
        case 1:
            guard name.count >= 3 else {
                showAlert(title: "Your name must be at least 3 characters long! 😩")
                return
            }
        case 2:
            guard age != 0 else {
                showAlert(title: "Please select a age before moving forward! 😩")
                return
            }
        case 3:
            guard !gender.isEmpty else {
                showAlert(title: "Please select a gender before moving forward! 😩")
                return
            }
        default:
            break
        }
        
        // GO TO NEXT SECTION
        if onboardingState == 3 {
            // sign in
            signIn()
        } else {
            withAnimation(.spring) {
                onboardingState += 1
            }
        }
    }
    
    private func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring) {
            currentUserSignedIn = true
        }
    }
    
    private func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
}

#Preview {
    OnboardingView()
        .background(Color.purple)
}
