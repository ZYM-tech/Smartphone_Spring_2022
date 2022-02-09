//
//  ViewController.swift
//  Week3.1
//
//  Created by 张一鸣 on 2022/2/8.
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
        performSegue(withIdentifier: "goToSecond", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecond"{
            let sec = segue.destination as! Second_ViewController
            sec.txtStr = "Welcome \(txtFirstName.text!), \(txtLastName.text!)"
        }
    }
    
}

