//
//  HomeViewController.swift
//  iOS_Login
//
//  Created by Samarul Huda on 22/10/17.
//  Copyright © 2017 Samarul Huda. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func logoutButtonClick(sender: AnyObject) {
        
        NSUserDefaults.standardUserDefaults().setBool(false, forKey: "IS_LOGGED_IN");
        
        NSUserDefaults.standardUserDefaults().synchronize();
        
        // self.dismissViewControllerAnimated(true, completion: nil);
        
        self.performSegueWithIdentifier("logoutView", sender: self );
        
    }

}
