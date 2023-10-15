//
//  ListBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 10.10.2023.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    @State var veggies: [String] = [
        "tomato", "potato", "carrot"
    ]
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.clear)
                } header: {
                    HStack {
                        Image(systemName: "flame.fill")
                        Text("Fruits")
                    }
                    .font(Font.headline)
                    .foregroundColor(.purple)
                }
                
                Section {
                    ForEach(veggies, id: \.self) { veggie in
                        Text(veggie.capitalized)
                    }
                    .listRowBackground(Color.clear)
                } header: {
                    HStack {
                        Image(systemName: "flame.fill")
                        Text("Veggies")
                    }
                    .font(Font.headline)
                    .foregroundColor(.purple)
                }
            }
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    addButton
                }
            }
            .listStyle(.sidebar) //GroupedListStyle()
        }
        .tint(.red)
    }
    
    var addButton: some View {
        Button("Add") {
            add()
        }
    }
    
    private func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    private func move(from source: IndexSet, to destination: Int) {
        fruits.move(fromOffsets: source, toOffset: destination)
    }
    
    private func add() {
        fruits.append("coconut")
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
