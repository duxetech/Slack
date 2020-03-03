//
//  LoginViewController.swift
//  Slack
//
//  Created by Karthik on 02/03/20.
//  Copyright © 2020 Karthik. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBAction func signupPressed(_ sender : UIButton) {

        let cont = self.storyboard?.instantiateViewController(withIdentifier: "SignupViewController") as! SignupViewController
        self.navigationController?.pushViewController(cont, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = false

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginPressed(_ sender : Any) {
        
    }
    
   

}
