//
//  ViewController.swift
//  RainbowRoad
//
//  Created by Alan Chen on 5/7/18.
//  Copyright © 2018 Alphie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var colors = [UIColor.red,  UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        self.tableView.rowHeight = 120.0
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
}


