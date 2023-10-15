//
//  TextFieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 11.10.2023.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Type something here...", text: $textFieldText) 
        //            .textFieldStyle(.roundedBorder)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)
                
                Button {
                    if textIsAppropriate() {
                        saveText()
                    }
                } label: {
                    Text("SAVE")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? .blue : .gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .disabled(!textIsAppropriate())
                
                Button {
                    deleteDatas()
                } label: {
                    Text("Delete All Data")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(haveAnySavedData() ? .blue : .gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .disabled(!haveAnySavedData())

                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp!")
        }
        
    }
    
    private func textIsAppropriate() -> Bool { textFieldText.count >= 3 }
    
    private func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
    
    private func haveAnySavedData() -> Bool { !dataArray.isEmpty }
    
    private func deleteDatas() {
        dataArray.removeAll(keepingCapacity: true)
    }
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
