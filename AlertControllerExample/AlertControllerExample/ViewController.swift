//
//  ViewController.swift
//  AlertControllerExample
//
//  Created by 张一鸣 on 2022/2/27.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblAlert: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pressMe(_ sender: Any) {
        
        var textField : UITextField?
        
        let alertController = UIAlertController(title: "Sample Alert Controller", message: "Simple Message", preferredStyle: .alert)
        
        let OKButton = UIAlertAction(title: "OK", style: .default) { action in
            print("OK button pressed")
            
            self.lblAlert.text = textField?.text
        }
        
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel) { action in
            print("Cancel button pressed")
        }
        
        
        alertController.addTextField { lblTextField in
            lblTextField.placeholder = "Type Something"
            textField = lblTextField
        }
        
        alertController.addAction(OKButton)
        alertController.addAction(cancelButton)
        
        self.present(alertController, animated: true, completion: nil)
        
    }
    
}

