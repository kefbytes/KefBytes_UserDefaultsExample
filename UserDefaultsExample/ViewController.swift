//
//  ViewController.swift
//  UserDefaultsExample
//
//  Created by Franks, Kent on 11/12/15.
//  Copyright © 2015 Franks, Kent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Only needs to be done once
        let defaults = NSUserDefaults.standardUserDefaults()
        if let _ = defaults.stringForKey("name") {
            return
        } else {
            defaults.setObject("Hannah", forKey: "name")
        }
    }

    @IBAction func getName(sender: AnyObject) {
        
        let defaults = NSUserDefaults.standardUserDefaults()
        if let name = defaults.stringForKey("name") {
            nameLabel.text = name
        }
        
    }
    
}

