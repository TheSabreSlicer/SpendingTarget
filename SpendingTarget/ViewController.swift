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
    let nextvc = FirstTabView()
    
    // This just straight up isn't working. Get help with this the next time you work.
    
//    override func viewDidAppear(animated: Bool) {
//        if notFirstLaunch {
//            presentViewController(nextvc, animated: true, completion: nil)
//        } else {
//            NSUserDefaults.standardUserDefaults().setBool(true, forKey: "NotFirstLaunch")
//        }
//    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}