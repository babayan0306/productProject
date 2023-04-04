//
//  FavoriteCell.swift
//  CoffeeHouse
//
//  Created by Yurka Babayan on 28.03.23.
//

import UIKit


class FavoriteCell: UITableViewCell {
    @IBOutlet weak var favCoffeeImage: UIImageView!
    @IBOutlet weak var favCoffeeTitle: UILabel!
    @IBOutlet weak var favCoffeePrice: UILabel!
    @IBOutlet weak var favCoffeeButton: UIButton!
    
    func configStyle() {
        favCoffeeImage.layer.cornerRadius = 10
        favCoffeeTitle.textColor = .black
        favCoffeePrice.textColor = .black
    }
    
    
    @IBAction func coffeeButton(_ sender: UIButton) {
    }
}
