//
//  ResizableSheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 15.10.2023.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button("Click me!") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView(detends: $detents)
//                .presentationDetents([.medium, .large])
//                .presentationDetents([.fraction(0.1), .height(300), .medium, .large])
//                .presentationDetents([.height(200)])
                .presentationDetents([.medium, .large], selection: $detents)
//                .presentationDragIndicator(.hidden)
//                .interactiveDismissDisabled()
        }
        .onAppear {
             showSheet = true
        }
    }
}

struct MyNextView: View {
    
    @Binding var detends: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Button("MEDIUM") {
                    detends = .medium
                }
                Button("LARGE") {
                    detends = .large
                }
            }
        }
    }
}

#Preview {
    ResizableSheetBootcamp()
}
