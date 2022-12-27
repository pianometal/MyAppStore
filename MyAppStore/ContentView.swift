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
            
            Text(model.name)
            
            Text(model.description)
            
            Text(String(model.price))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(model: iMac)
    }
}
