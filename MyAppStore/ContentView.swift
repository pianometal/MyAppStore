//
//  ContentView.swift
//  MyAppStore
//
//  Created by Kyle Lovely on 12/27/22.
//

import SwiftUI

struct ContentView: View {
    
    var model: ItemModel
    
    var body: some View {
        
        VStack {
            
            Image(systemName: model.image)
                .resizable()
                .scaledToFit()
                .padding(.horizontal)
            
            Text(model.name)
                .font(.largeTitle)
                .bold()
            
            Text(model.description)
                .foregroundColor(.gray)
            
            Text(String(model.price))
                .font(.title)
                .foregroundColor(.green)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(model: macBook)
    }
}
