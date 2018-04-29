//
//  ViewController.swift
//  pickerView
//
//  Created by 吳登秝 on 2018/4/29.
//  Copyright © 2018年 DavidWu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var respondLabel: UILabel!
    
    let countryArray = ["U.S.A", "Taiwan", "Portugal", "France", "England"]

    override func viewDidLoad() {
        super.viewDidLoad()
        respondLabel.text = ""
        pickerView.delegate = self
        pickerView.dataSource = self
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countryArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countryArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        respondLabel.text = "You come from \(countryArray[row])"
    }

    
}

