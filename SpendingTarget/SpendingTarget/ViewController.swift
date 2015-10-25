//
//  ViewController.swift
//  SpendingTarget
//
//  Created by Connick Shields on 10/24/15.
//  Copyright © 2015 CLM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let notFirstLaunch = NSUserDefaults.standardUserDefaults().boolForKey("NotFirstLaunch")
    let nextvc = InitialTabController()
    
    override func viewDidAppear(animated: Bool) {
        if notFirstLaunch {
            print("Not first launch")
            self.performSegueWithIdentifier("introSeg", sender: self)
        } else {
            print("It was the first launch!")
            NSUserDefaults.standardUserDefaults().setBool(true, forKey: "NotFirstLaunch")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        SearchViewController().initSearch()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

