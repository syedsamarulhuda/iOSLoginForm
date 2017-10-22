//
//  SignUpViewController.swift
//  iOS_Login
//
//  Created by Samarul Huda on 22/10/17.
//  Copyright © 2017 Samarul Huda. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    
    
    @IBOutlet weak var emailTextFeild: UITextField!
    
    @IBOutlet weak var passwordTextFeild: UITextField!
    
    @IBOutlet weak var retypeTextFeild: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  
    @IBAction func registerButtonClick(sender: AnyObject) {
        
        
        let email = emailTextFeild.text;
        let password = passwordTextFeild.text;
        let retypePassword = retypeTextFeild.text;
        
        if(email!.isEmpty)
        {
            displayAlertMsg("Email feild cannot be empty!");
            return;
        }
        else if(password!.isEmpty)
            {
                displayAlertMsg("Password feild cannot be empty!");
                return;
        }else if(retypePassword!.isEmpty)
            {
                displayAlertMsg("Please Retype Your Password!");
                return;
        }
        else if(password != retypePassword)
            {
                displayAlertMsg("Password Mismatched!");
                
        }else
        {
            
            NSUserDefaults.standardUserDefaults().setObject(email, forKey: "USER_EMAIL");
           
            NSUserDefaults.standardUserDefaults().setObject(password, forKey: "PASSWORD");
            
            NSUserDefaults.standardUserDefaults().synchronize();
            
            
            
            let alert = UIAlertController(title:"Alert",message:"Registration Successfull. Thank You!",
                preferredStyle: UIAlertControllerStyle.Alert)
            
            let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default){ action in
                
                self.dismissViewControllerAnimated(true, completion:nil);
                
            }
            
            alert.addAction(okAction);
           
             self.presentViewController(alert,animated:true,completion:nil);
            
        }
        
        
    }
    
    
    func displayAlertMsg( msg:String)
    {
        
        let alert = UIAlertController(title:"Alert",message:msg,
            preferredStyle: UIAlertControllerStyle.Alert)
        
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler:nil);
        
        alert.addAction(okAction);
        
        self.presentViewController(alert,animated:true,completion:nil);
    }
    
    
    

}
