//
//  ItemListView.swift
//  MyAppStore
//
//  Created by Kyle Lovely on 12/27/22.
//

import SwiftUI

struct ItemListView: View {
    
    var body: some View {
        
        ScrollView {
            
            /// Take each item in the array, and fit it to the blueprint that we have down below
            ForEach(itemArray) { storeItem in
                
                VStack {
                    
                    Image(systemName: storeItem.image)
                        .resizable()
                        .scaledToFit()
                        .padding(.horizontal)
                    
                    Text(storeItem.name)
                        .font(.largeTitle)
                        .bold()
                    
                    Text(storeItem.description)
                        .foregroundColor(.gray)
                    
                    Text(String(storeItem.price))
                        .font(.title)
                        .foregroundColor(.green)
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
