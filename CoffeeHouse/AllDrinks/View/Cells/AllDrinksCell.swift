//
//  AllDrinksCell.swift
//  CoffeeHouse
//
//  Created by Yurka Babayan on 27.03.23.
//

import UIKit

class AllDinksCell: UICollectionViewCell {
    
    static var object2 = AllDinksCell()
    
    @IBOutlet weak var coffeeImage: UIImageView!
    @IBOutlet weak var coffeeTitle: UILabel!
    @IBOutlet weak var coffeePrice: UILabel!
    @IBOutlet weak var coffeHeart: UIButton!
    
    
    var favoriteProductsList: [Product] = []
    
    static var saredCell = AllDinksCell()
    //    var isOn: Bool = false
    
    func configStyle() {
        coffeeImage.layer.cornerRadius = 15
    }
    
    
    @IBAction func favCoffeButton(_ sender: UIButton) {
        for i in 0...(GenerateProductList.object.allProducts.count - 1) {
            if GenerateProductList.object.allProducts[i].isActive == true {
                GenerateProductList.object.allProducts[i].isActive = false
                coffeHeart.setImage(UIImage(named: "off-coffee"), for: .normal)
                coffeHeart.tintColor = .black
            } else {
                GenerateProductList.object.allProducts[i].isActive = true
                coffeHeart.setImage(UIImage(named: "on-coffee"), for: .normal)
                coffeHeart.tintColor = .black
                GenerateProductList.object.favoriteProducts.append(GenerateProductList.object.allProducts[i])
            }
        }
    }
}


    

