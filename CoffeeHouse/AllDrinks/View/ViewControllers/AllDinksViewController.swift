//
//  AllDinksViewController.swift
//  CoffeeHouse
//
//  Created by Yurka Babayan on 26.03.23.
//

import UIKit

class AllDinksViewController: UIViewController {
    
    @IBOutlet weak var allDinksCollection: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        allDrinksDelegateAndDataSource()
        allDrinksNib()
    }
    
    func allDrinksDelegateAndDataSource() {
        allDinksCollection.delegate = self
        allDinksCollection.dataSource = self
    }
    
    func allDrinksNib() {
        let cellNib = UINib(nibName: "AllDrinksCell", bundle: .main)
        allDinksCollection.register(cellNib, forCellWithReuseIdentifier: "AllDinksCell")
    }
}


extension AllDinksViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return GenerateProductList.object.allProducts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let allCell = allDinksCollection.dequeueReusableCell(withReuseIdentifier: "AllDinksCell", for: indexPath) as? AllDinksCell
        allCell?.configStyle()
        let allProduct =  GenerateProductList.object.allProducts[indexPath.row]
        
        allCell?.coffeeTitle.text = allProduct.proDuctTitle
        allCell?.coffeePrice.text = allProduct.productPrice
        return allCell!
    }
}


extension AllDinksViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width / 2.1, height:UIScreen.main.bounds.width / 2.1)
    }
}
