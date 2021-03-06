//
//  RegisterViewController.swift
//  AuthenSNRU
//
//  Created by Student01 on 20/3/2562 BE.
//  Copyright © 2562 Dss. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    // My Outlet
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    // End Outlet
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    } // Main Method
    
    @IBAction func uploadButton(_ sender: UIBarButtonItem) {
        print("You Click upload")
        
        let name = nameTextField.text!
        let user = userTextField.text!
        let password = passwordTextField.text!
        
        
        
        print("name = \(name)")
        print("user  = \(user)")
        print("password = \(password)")
        
        if (name.count == 0) || (user.count == 0) || (password.count == 0) {
            myAlert(titleString: "Have space", messegeString: "Please Fill All Black")
        } else{
        
        }
        
        
        
    }  //upload Button
    
    func myAlert(titleString: String,messegeString:String) -> Void {
        
        print("title = \(titleString),messege = \(messegeString)")
        let alert = UIAlertController(title: titleString, message: messegeString, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        present(alert, animated: true, completion: nil)
        
        
        
        
    }  // my Alert
    
    func uploadData(name: String, user: String, password: String) -> Void {
        
        let urlstring: String = "http://androidthai.in.th/snru/addDataPring.php?isAdd=true&Name=\(name)&User=\(user)&Password=\(password)"
        
        
        
    }
    
    
    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        print("You Click Back")
        performSegue(withIdentifier: "BackMain", sender: self)
        
        
    }
    
   
 

} // Main Class
