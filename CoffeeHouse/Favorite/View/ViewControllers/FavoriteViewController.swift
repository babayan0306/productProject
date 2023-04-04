//
//  FavoriteViewController.swift
//  CoffeeHouse
//
//  Created by Yurka Babayan on 26.03.23.
//

import UIKit

class FavoriteViewController: UIViewController {
    
    @IBOutlet weak var favoriteTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        favoriteTableViewDelegateAndDataSource()
        favoriteTableViewNib()
        favoriteProductsListAppend()
    }
    
    func favoriteTableViewDelegateAndDataSource() {
        favoriteTableView.delegate = self
        favoriteTableView.dataSource = self
    }
    
    func favoriteTableViewNib() {
        let cellNib = UINib(nibName: "FavoriteCell", bundle: .main)
        favoriteTableView.register(cellNib, forCellReuseIdentifier: "FavoriteCell")
    }
    
    func favoriteProductsListAppend() {
                
            }
        }
        
    
    
    
    extension FavoriteViewController: UITableViewDelegate, UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return GenerateProductList.object.favoriteProducts.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let favCell = favoriteTableView.dequeueReusableCell(withIdentifier: "FavoriteCell", for: indexPath) as? FavoriteCell
            let favProduct = GenerateProductList.object.favoriteProducts[indexPath.row]
            favCell?.favCoffeeTitle.text = favProduct.proDuctTitle
            favCell?.favCoffeePrice.text = favProduct.productPrice
            favCell?.configStyle()
            return favCell!
        }
        
        
    }
    
