//
//  ProfileView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 13.10.2023.
//

import SwiftUI

struct ProfileView: View {
    
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(currentUserName ?? "Your name here")
            Text("This user is \(currentUserAge ?? 0) years old!")
            Text("Their gender is \(currentUserGender ?? "unknown")")
            
            Text("SIGN OUT")
                .foregroundStyle(.white)
                .font(.headline)
                .fontWeight(.bold)
                .frame(height: 55)
                .padding(.horizontal, 50)
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .onTapGesture {
                    signOut()
                }
        }
        .font(.title)
        .foregroundStyle(.purple)
        .padding()
        .padding(.vertical, 40)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(radius: 10)
    }
}

extension ProfileView {
    private func signOut() {
        currentUserAge = nil
        currentUserName = nil
        currentUserGender = nil
        currentUserSignedIn = false
    }
}

#Preview {
    ProfileView()
}
