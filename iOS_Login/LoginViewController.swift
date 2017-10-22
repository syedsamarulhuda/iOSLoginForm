//
//  LoginViewController.swift
//  iOS_Login
//
//  Created by Samarul Huda on 22/10/17.
//  Copyright © 2017 Samarul Huda. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    
    @IBOutlet weak var emailTextFeild: UITextField!
    @IBOutlet weak var passwordTextFeild: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func loginButtonClick(sender: AnyObject) {
        
        let emailText = emailTextFeild.text;
        let passwordText = passwordTextFeild.text;
        
        let emailStored = NSUserDefaults.standardUserDefaults().stringForKey("USER_EMAIL");
        let passwordStored = NSUserDefaults.standardUserDefaults().stringForKey("PASSWORD");
        
        if(emailText!.isEmpty)
        {
            displayAlertMsg("Email Feild Cannot Be Empty!")
            return;
        }else if(passwordText!.isEmpty)
        {
            displayAlertMsg("Password Feild Cannot Be Empty!")
            return;
        }else{
            
            if(emailText == emailStored)
            {
                if(passwordText == passwordStored)
                {
                NSUserDefaults.standardUserDefaults().setBool(true, forKey: "IS_LOGGED_IN");
                    
                NSUserDefaults.standardUserDefaults().synchronize();
                    
                   // self.dismissViewControllerAnimated(true, completion: nil);
                    
                     self.performSegueWithIdentifier("homeView2", sender: self );
                    
                }else{
                    
                    displayAlertMsg("Invalid Credentials!")
                    return;
                }
            }else{
                
                displayAlertMsg("Invalid Credentials!")
                return;
            }
            
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
