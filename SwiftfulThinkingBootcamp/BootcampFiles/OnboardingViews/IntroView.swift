//
//  IntroView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 13.10.2023.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            //background
            
            RadialGradient(
                gradient: Gradient(colors: [
                    Color(red: 0.07, green: 0.76, blue: 0.91),
                    Color(red: 0.76, green: 0.44, blue: 0.92),
                    Color(red: 0.94, green: 0.3, blue: 0.34)]),
                center: .topLeading,
                startRadius: 10,
                endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea()

            if currentUserSignedIn {
                ProfileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
                    .animation(.spring, value: currentUserSignedIn)
            } else {
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
                    .animation(.spring, value: currentUserSignedIn)
            }
        }
    }
}

#Preview {
    IntroView()
}
