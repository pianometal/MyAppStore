//
//  ItemModel.swift
//  MyAppStore
//
//  Created by Kyle Lovely on 12/27/22.
//

import Foundation

/// Blueprint `Model` for an Item in our shop
struct ItemModel: Identifiable {
    
    /// Create a `UUID` automatically as soon as it's made
    var id = UUID()
    
    
    /// Item Name
    var name: String
    
    /// Image
    var image: String
    
    /// Description
    var description: String
    
    /// Price
    var price: Double
    
    /// Add To Cart
    // TODO: Figure this out

}


// MARK: - Models -

let macBook = ItemModel(
    name: "MacBook Pro",
    image: "laptopcomputer",
    description: "This is a brand new Macbook Pro. It's super awesome and stuff. You should totally buy it, even though it will cost your first and second born. TAKE THEM!!",
    price: 3999.99)

let iMac = ItemModel(
    name: "iMac",
    image: "desktopcomputer",
    description: "This is a brand new iMac. It's super awesome and stuff. You should totally buy it, even though it will cost your first and second born. TAKE THEM!!",
    price: 1999.99)


// MARK: Array of Items

let itemArray = [macBook, iMac]
