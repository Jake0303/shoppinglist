//
//  ViewController.swift
//  ShoppingList
//
//  Created by student on 2016-02-26.
//  Copyright © 2016 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var shoppingListTextField: UITextField!
    @IBOutlet weak var newListItem1TextField: UITextField!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var quantityLabel: UILabel!
    var quantityNum = Int32()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func minusButtonClick(sender: AnyObject) {
        quantityNum = Int32(quantityLabel.text!)!
        if(quantityNum > 0)
        {
            quantityNum--
            quantityLabel.text = String(quantityNum)
        }
    }

    @IBAction func addButtonClick(sender: AnyObject) {
        quantityNum = Int32(quantityLabel.text!)!
        quantityNum++
        quantityLabel.text = String(quantityNum)
        

    }
    @IBAction func cancelButtonClick(sender: AnyObject) {
        quantityNum = 0
        quantityLabel.text = String(quantityNum)
    }
}

