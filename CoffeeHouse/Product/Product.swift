//
//  Product.swift
//  CoffeeHouse
//
//  Created by Yurka Babayan on 27.03.23.
//

import UIKit


enum CoffeeType {
    case sweet
    case bestseller
    case espresso
    case tea
}
struct Product {
    
    var proDuctTitle: String
    var productPrice: String
    var isActive: Bool
    var coffeeType: CoffeeType
}

