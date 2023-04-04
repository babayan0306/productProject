//
//  ProductList.swift
//  CoffeeHouse
//
//  Created by Yurka Babayan on 31.03.23.
//

import Foundation

class GenerateProductList {
    
    static var object = GenerateProductList()
    
    var allProducts: [Product] = [Product(proDuctTitle: "Capuchino", productPrice: "500", isActive: false, coffeeType: .bestseller),
                                  Product(proDuctTitle: "Coffee", productPrice: "300", isActive: false, coffeeType: .espresso),
                                  Product(proDuctTitle: "Tea", productPrice: "450", isActive: false, coffeeType: .tea),
                                  Product(proDuctTitle: "Frapuchino", productPrice: "250", isActive: false, coffeeType: .espresso),
                                  Product(proDuctTitle: "Americano", productPrice: "400", isActive: false, coffeeType: .bestseller),
                                  Product(proDuctTitle: "Latte", productPrice: "550", isActive: false, coffeeType: .bestseller),
                                  Product(proDuctTitle: "Espresso", productPrice: "300", isActive: false, coffeeType: .espresso),
                                  Product(proDuctTitle: "Mokachino", productPrice: "600", isActive: false, coffeeType: .sweet),
                                  Product(proDuctTitle: "Bear", productPrice: "500000", isActive: false, coffeeType: .bestseller)]
    
    var favoriteProducts: [Product] = []
}


