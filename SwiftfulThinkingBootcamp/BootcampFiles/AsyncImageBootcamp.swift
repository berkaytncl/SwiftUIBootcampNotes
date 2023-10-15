//
//  AsyncImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Berkay Tuncel on 14.10.2023.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .frame(width: 100, height: 100)
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            @unknown default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }

//        AsyncImage(url: url) { returnedImage in
//            returnedImage
//                .resizable()
//                .frame(width: 100, height: 100)
//                .scaledToFit()
//                .clipShape(RoundedRectangle(cornerRadius: 20))
//        } placeholder: {
//            ProgressView()
//        }
    }
}

#Preview {
    AsyncImageBootcamp()
}
