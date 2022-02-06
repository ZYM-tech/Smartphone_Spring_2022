//
//  ViewController.swift
//  SegueExample
//
//  Created by 张一鸣 on 2022/2/6.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFirstName: UITextField!
    
    @IBOutlet weak var txtLastName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToSecondVC(_ sender: Any) {
        performSegue(withIdentifier: "goToSecondVC", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondVC"{
            
            let secondVC = segue.destination as! Second_ViewController
            
            secondVC.welcomeStr = "Welcome \(txtLastName.text!), \(txtFirstName.text!)"
            
        }
    }
    
}

