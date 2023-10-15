//
//  GuardIfLetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 12.10.2023.
//

import SwiftUI

struct GuardIfLetBootcamp: View {
    
    @State var currentUserID: String? = "testuser123"
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Here we are practicing safe coding!")

                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData()
            }
        }
    }
    
    private func loadData() {
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User ID is: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error. There is no User ID"
        }
    }
    
    private func loadData2() {
        guard let userID = currentUserID else {
            displayText = "Error. There is no User ID"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! User ID is: \(userID)"
            isLoading = false
        }
    }
}

#Preview {
    GuardIfLetBootcamp()
}
