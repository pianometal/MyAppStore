//
//  ItemListView.swift
//  MyAppStore
//
//  Created by Kyle Lovely on 12/27/22.
//

import SwiftUI

struct ItemListView: View {
    
    @State private var addedToCart = false
    
    var body: some View {
        
        ScrollView {
            
            /// Take each item in the array, and fit it to the blueprint that we have down below
            ForEach(itemArray) { storeItem in
                
                VStack {
                    
                    HStack {
                        
                        Image(systemName: storeItem.image)
                            .resizable()
                            .scaledToFit()
                            .frame(height: storeItem.deviceType.height)
                            .padding(.horizontal)
                            .foregroundColor(storeItem.deviceType.color)
                        
                        Spacer()
                        
                        Text(String(storeItem.price))
                            .font(.title)
                            .foregroundColor(.green)
                            .padding(.trailing)
                    }
                    
                    Text(storeItem.name)
                        .font(.largeTitle)
                        .bold()
                
                    Text(storeItem.description)
                            .foregroundColor(.gray)
                    
                    // FIXME: Make it individualized
                    Button { addedToCart.toggle() } label: {
                        
                        Text(addedToCart ? "In Cart" : "Add to Cart")
                            .padding()
                            .foregroundColor(.white)
                            .background(addedToCart ? .green : .blue)
                            .cornerRadius(16)
                    }

                    Divider()
                        .padding()
                }
            }
        }
    }
}

struct ItemListView_Previews: PreviewProvider {
    static var previews: some View {
        ItemListView()
    }
}
