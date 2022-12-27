//
//  ItemModel.swift
//  MyAppStore
//
//  Created by Kyle Lovely on 12/27/22.
//

import SwiftUI

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
    
    var deviceType: DeviceType
    
    /// Add To Cart
    // TODO: Figure this out

}


// MARK: - Models -

let macBook = ItemModel(
    name: "MacBook Pro",
    image: "laptopcomputer",
    description: "This is a brand new Macbook Pro. It's super awesome and stuff. You should totally buy it, even though it will cost your first and second born. TAKE THEM!!",
    price: 3999.99,
    deviceType: .computer)

let iMac = ItemModel(
    name: "iMac",
    image: "desktopcomputer",
    description: "This is a brand new iMac. It's super awesome and stuff. You should totally buy it, even though it will cost your first and second born. TAKE THEM!!",
    price: 1999.99,
    deviceType: .computer)

let iPhone = ItemModel(name: "iPhone 14", image: "apps.iphone", description: "Look mom, it's an iPhone!", price: 999.99, deviceType: .mobile)

let iPad = ItemModel(name: "iPad Air", image: "ipad", description: "Look mom, it's an iPad Air!", price: 1499.99, deviceType: .mobile)


// MARK: Array of Items

let itemArray = [macBook, iMac, iPhone, iPad]


/// Determines what type of device the product is
enum DeviceType {
    
    case computer
    case mobile
    
    var height: CGFloat {
        switch self {
        case .computer: return 64
        default: return 96
        }
    }
    
    var color: Color {
        switch self {
        case .computer: return .mint
        case .mobile: return .black
        }
    }
}
