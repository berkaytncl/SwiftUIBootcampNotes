//
//  ViewModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 13.10.2023.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 40)
        let fruit3 = FruitModel(name: "Watermelon", count: 88)
        let fruit4 = FruitModel(name: "Apples", count: 5)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruitArray.append(contentsOf: [fruit1, fruit2, fruit3, fruit4])
            self.isLoading = false
        }
    }
    
    func deleteFruit(indexSet: IndexSet) {
        fruitArray.remove(atOffsets: indexSet)
    }
}

struct ViewModelBootcamp: View {
//    @StateObject -> USE THIS ON CREATION / INIT
//    @ObservedObject -> USE THIS FOR SUBVIEWS
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text(fruit.count.description)
                                .frame(maxWidth: 50, alignment: .leading)
                                .foregroundStyle(.red)
                                .bold()
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Fruit List")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        RandomScreen(fruitViewModel: fruitViewModel)
                    } label: {
                        Image(systemName: "arrow.right")
                            .font(.title2)
                    }
                }
            }
        }
    }
}

struct RandomScreen: View {
    
    @Environment(\.dismiss) var dismissScreen
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack(spacing: 20) {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundStyle(.white)
                        .font(.headline)
                }
            }
        }
    }
}

#Preview {
    ViewModelBootcamp()
}
