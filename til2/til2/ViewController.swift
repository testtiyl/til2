//
//  ViewController.swift
//  til2
//
//  Created by Kanchan on 23/12/16.
//  Copyright © 2016 Shyatoria. All rights reserved.
//


import UIKit
import FBSDKLoginKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func fbBtnClicked(_ sender: UIButton) {
        
        let loginManager = FBSDKLoginManager()
        let perrmissions = ["public_profile", "email"]
        
            loginManager.logIn(withReadPermissions: perrmissions, from: self) {
            
            (loginResult, error) in
                       if error != nil {
                print("Login failed, Please try again.")
            } else if (loginResult?.isCancelled)! {
                print("Facebook Login Cancelled.")
            } else {
                print("fb login done.")
                let accessTokn = loginResult?.token.tokenString
                let fbid = loginResult?.token.userID!
               //self.loginUser(accessTokn,fbID:fbid)
                //                self.fetchFbProfileInfoForLogin()
            }
        }
    }
}



