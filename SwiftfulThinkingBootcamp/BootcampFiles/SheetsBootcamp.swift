//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 10.10.2023.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Open Sheet")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }
            //.sheet(isPresented: $showSheet) {
            .fullScreenCover(isPresented: $showSheet) {
                SecondScreen(backgroundColor: .cyan)
            }
        }
        
    }
}

struct SecondScreen: View {
    
    @Environment(\.dismiss) var dismissScreen
    let backgroundColor: Color
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            backgroundColor
                .ignoresSafeArea()
            
            Button {
                dismissScreen.callAsFunction()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding(20)
            }
        }
    }
}

struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
//        SecondScreen()
    }
}
