//
//  DashboardViewController.swift
//  LoginApp
//
//  Created by 张一鸣 on 2022/3/27.
//

import UIKit
import Firebase

class DashboardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func LogoutAction(_ sender: Any) {
        
        let  firebaseAuth = Auth.auth()
        
        do {
            try firebaseAuth.signOut()
            
            KeyChainService().keyChain.delete("uid")
            
            self.navigationController?.popViewController(animated: true)
        }catch let signoutError  as NSError {
            print (signoutError.localizedDescription)
            return
        }
    }
    
}
