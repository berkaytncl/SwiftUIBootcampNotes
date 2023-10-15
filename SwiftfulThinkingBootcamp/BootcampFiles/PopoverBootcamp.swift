//
//  PopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 10.10.2023.
//

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            
            VStack {
                Button("BUTTON") {
                    withAnimation(.spring()) {
                        showNewScreen.toggle()
                    }
                }
                .font(.largeTitle)
                
                Spacer()
            }
            //METHOD 1 - SHEET
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen()
//            }
            
            //METHOD 2 - TRANSITION
            ZStack {
                if showNewScreen {
                    NewScreen(showNewScreen: $showNewScreen)
                        .padding(.top, 100)
                        .transition(.move(edge: .bottom))
                }
            }
            .zIndex(2.0)
            
            //METHOD 3 - ANIMATION OFFSET
//            NewScreen(showNewScreen: $showNewScreen)
//                .padding(.top, 100)
//                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
//                .animation(.spring(), value: showNewScreen)
        }
        
    }
}

struct NewScreen: View {
    
//    @Environment(\.dismiss) var dismissScreen
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .ignoresSafeArea()
            
            Button {
//                dismissScreen.callAsFunction()
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding(20)
            }

        }
    }
}

struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
//        NewScreen()
    }
}
