//
//  ViewController.swift
//  SpendingTarget
//
//  Created by Connick Shields on 10/24/15.
//  Copyright (c) 2015 CLM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let notFirstLaunch = NSUserDefaults.standardUserDefaults().boolForKey("NotFirstLaunch")
    
    override func viewWillAppear(animated: Bool) {
        if notFirstLaunch {
            presentViewController(nextViewController, animated: true, completion: nil)
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

