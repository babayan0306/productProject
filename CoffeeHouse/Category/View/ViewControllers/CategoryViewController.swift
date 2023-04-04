//
//  CategoryViewController.swift
//  CoffeeHouse
//
//  Created by Yurka Babayan on 26.03.23.
//

import UIKit

class CategoryViewController: UIViewController {

    @IBOutlet weak var oneBtn: UIButton!
    @IBOutlet weak var twoBtn: UIButton!
    @IBOutlet weak var threeBtn: UIButton!
    @IBOutlet weak var fourBtn: UIButton!
    @IBOutlet weak var fiveBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myCategoryStyle()
    }
    
    private func myCategoryStyle() {
        oneBtn.layer.cornerRadius = 10
        twoBtn.layer.cornerRadius = 10
        threeBtn.layer.cornerRadius = 10
        fourBtn.layer.cornerRadius = 10
        fiveBtn.layer.cornerRadius = 10
    }
    
    @IBAction private func myButtonsnavigation(_ sender: UIButton) {
        
        let allStoryboard = UIStoryboard(name: "AllDrinksStoryboard", bundle: .main)
        let allVC = allStoryboard.instantiateViewController(withIdentifier: "AllDinksViewController")
//        allVC.modalPresentationStyle = .fullScreen // prototype model
        self.present(allVC, animated: true)
        
        switch sender.tag {
        case 0:
            print("one")
        case 1:
            print("two")
        case 2:
            print("three")
        case 3:
            print("four")
        case 4:
            print("five")
        default: break
        }
    }
    
}
