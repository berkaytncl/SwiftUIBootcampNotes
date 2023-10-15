//
//  ActionSheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 11.10.2023.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var colorChanged: Bool = false
    @State var color: Color = .black
    
    var body: some View {
        
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button {
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .tint(.primary)
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(color)
                .animation(.spring(), value: colorChanged)
        }
        .confirmationDialog("Select a color", isPresented: $showActionSheet,  titleVisibility: .visible) {
            Button("Cyan", role: .none) {
                color = .cyan
                colorChanged.toggle()
            }
            Button("Purple", role: .none) {
                color = .purple
                colorChanged.toggle()
            }
            Button("Red", role: .destructive) {
                color = .red
                colorChanged.toggle()
            }
            Button("Black", role: .cancel) {
                color = .black
                colorChanged.toggle()
            }
        } message: {
            Text("Can change after again")
        }
    }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
