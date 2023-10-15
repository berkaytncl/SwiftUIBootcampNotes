//
//  AlertBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 10.10.2023.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    @State var backgroundColor: Color = .purple
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Button("Button 1") {
                    alertTitle = "ERROR UPLOADING VIDEO"
                    alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
                Button("Button 2") {
                    alertTitle = "Successfully uploaded video"
                    alertMessage = "Your video is now public! 🥳"
                    showAlert.toggle()
                }
            }
            .foregroundColor(.white)
            .font(.headline)
        }
        .alert(alertTitle, isPresented: $showAlert) {
            alertButtons
        } message: {
            Text(alertMessage)
        }
    }
    
    var alertButtons: some View {
        VStack {
            Button("OK", role: .none) {}
//            Button("Purple", role: .none) {
//                backgroundColor = .purple
//            }
//
//            Button("Cyan", role: .destructive) {
//                backgroundColor = .cyan
//            }
//
//            Button("Don't swap", role: .cancel) {}
        }
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
