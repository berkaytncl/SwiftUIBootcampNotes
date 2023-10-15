//
//  FocusStateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 14.10.2023.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingField: Hashable {
        case username
        case password
    }
    
    @State private var username: String = ""
    @State private var password: String = ""
//    @FocusState private var usernameInFocus: Bool
//    @FocusState private var passwordInFocus: Bool
    @FocusState private var fieldInFocus: OnboardingField?
    
    var body: some View {
        VStack(spacing: 30) {
            TextField("Add your name here...", text: $username)
                .focused($fieldInFocus, equals: .username)
                .textInputAutocapitalization(.never)
//                .focused($usernameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            SecureField("Add your password here...", text: $password)
                .focused($fieldInFocus, equals: .password)
//                .focused($passwordInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Button("SIGN UP 🚀") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if usernameIsValid && passwordIsValid {
                    print("SIGN UP")
                } else if usernameIsValid {
                    fieldInFocus = .password
                } else if passwordIsValid {
                    fieldInFocus = .username
                }
            }
            
//            Button("TOGGLE FOCUS STATE") {
//                usernameInFocus.toggle()
//            }
        }
        .padding(40)
//        .onAppear(perform: {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.usernameInFocus = true
//            }
//        })
    }
}

#Preview {
    FocusStateBootcamp()
}
