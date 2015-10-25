//
//  BudgetViewController.swift
//  SpendingTarget
//
//  Created by Logan Graybill on 10/24/15.
//  Copyright © 2015 CLM. All rights reserved.
//

import UIKit

class BudgetViewController : UIViewController, UITableViewDataSource {
    
    // The contents of the following array will appear in the table.
    
    //var dataSourceArray = [String]()
    
    var dataSourceArray = ["Zafar", "is", "a", "fuckboi"]
    
    
    
    
    
    
    func numberOfSectionsInTableView(tableView : UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section : Int) -> Int {
        return dataSourceArray.count
    }
    
    func tableView(tableView : UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let itemTitle = dataSourceArray[indexPath.row]
        
        cell.textLabel?.text = itemTitle
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("budgetVC loaded")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}