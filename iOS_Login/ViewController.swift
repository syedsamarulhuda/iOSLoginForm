//
//  ViewController.swift
//  iOS_Login
//
//  Created by Samarul Huda on 20/10/17.
//  Copyright © 2017 Samarul Huda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
   override func viewDidAppear(animated: Bool) {
    
    let isUserLoggedIn = NSUserDefaults.standardUserDefaults().boolForKey("IS_LOGGED_IN");
    
    if(!isUserLoggedIn){
      self.performSegueWithIdentifier("loginView", sender: self );
    }else{
         self.performSegueWithIdentifier("homeView", sender: self );
     }
    }

}

