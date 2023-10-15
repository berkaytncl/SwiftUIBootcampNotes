//
//  ListSwipeActionsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 14.10.2023.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    var body: some View {
        NavigationStack {
            List {
                Section("Fruits") {
                    ForEach(fruits, id: \.self) {
                        Text($0.capitalized)
                            .swipeActions(edge: .leading, allowsFullSwipe: true) {
                                Button("Share") {
                                    
                                }
                                .tint(.yellow)
                            }
                            .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                                Button("Archive") {
                                    
                                }
                                .tint(.blue)
                                Button("Save") {
                                    
                                }
                                .tint(.green)
                                Button("Junk") {
                                    
                                }
                                .tint(.gray)
                            }
                    }
//                    .onDelete(perform: delete)
                    
                }
            }
            .navigationTitle("Greengrocer")
        }
    }
    
    private func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
}

#Preview {
    ListSwipeActionsBootcamp()
}
