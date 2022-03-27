//
//  ViewController.swift
//  LoginApp
//
//  Created by 张一鸣 on 2022/3/27.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var lblStatus: UILabel!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    
    override func viewDidAppear(_ animated: Bool) {
        
        let keychain = KeyChainService().keyChain
        
        if keychain.get("uid") != nil {
            performSegue(withIdentifier: "segueDashboard", sender: self)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblStatus.isHidden = true
    }
    
    
    func addKeychainAfterLogin(uid : String){
        let keyChain = KeyChainService().keyChain
        keyChain.set(uid, forKey: "uid")
    }
    
    
    
    @IBAction func loginAction(_ sender: Any) {
        
        guard let email = txtEmail.text else {return}
        
        guard let password = txtPassword.text else {return}
        
        //if input is empty
        if email == "" || password == "" {
            lblStatus.text  = "Please enter vaild account"
            lblStatus.isHidden = false
            return
        }
        
        //if input is not a vaild email
        if email.isEmail == false {
            lblStatus.text  = "Please enter vaild account"
            lblStatus.isHidden = false
            return
        }
        
        
//        if  password.isPasswordvaild  == false {
//            lblStatus.text = "PLease enter a strong password"
//            lblStatus.isHidden = false
//            return
//        }
        
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
          guard let strongSelf = self else { return }
            if error != nil {
                strongSelf.lblStatus.text = error?.localizedDescription
                strongSelf.lblStatus.isHidden = false
                return
            }
            
            //if we reach here, successfully logged in
            //Clean out password
            strongSelf.txtPassword.text = ""
            
            strongSelf.addKeychainAfterLogin(uid: Auth.auth().currentUser!.uid)
            
            strongSelf.performSegue(withIdentifier: "segueDashboard", sender: strongSelf)
        }
        
        
        
    }
}

