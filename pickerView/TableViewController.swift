//
//  TableViewController.swift
//  pickerView
//
//  Created by 吳登秝 on 2018/4/29.
//  Copyright © 2018年 DavidWu. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let countryArray = ["U.S.A", "United Kingdom", "France", "Germany", "China"]
    let flagArray: [UIImage] = [#imageLiteral(resourceName: "united-states"), #imageLiteral(resourceName: "united-kingdom"), #imageLiteral(resourceName: "france"), #imageLiteral(resourceName: "germany"), #imageLiteral(resourceName: "china")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "tableViewCell")
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell") as! TableViewCell
        cell.flagImage.image = flagArray[indexPath.row]
        cell.countryLabel.text = countryArray[indexPath.row]
        return cell
    }
}
