//
//  GetNameViewController.swift
//  Assignment_4
//
//  Created by 张一鸣 on 2022/2/20.
//

import UIKit
protocol SendFirstAndLastNameDelegate {
    func setFirstAndLastName(firstName : String, lastName : String)
    func setWelcomeText(welcomeText : String)
}

class GetNameViewController: UIViewController {
    var firstName : String?
    var lastName : String?
    var sendFirstAndLastNameDelegate : SendFirstAndLastNameDelegate?

    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let first = firstName else {
            return
        }

        guard let last = lastName else {
            return
        }
        
        txtFirstName.text = first
        txtLastName.text = last

    }


    @IBAction func saveName(_ sender: Any) {
        guard let firstN = txtFirstName.text else {return}
        guard let lastN = txtLastName.text else {return}
        
        sendFirstAndLastNameDelegate?.setFirstAndLastName(firstName: firstN, lastName: lastN)
        sendFirstAndLastNameDelegate?.setWelcomeText(welcomeText: "Welcome \(firstN), \(lastN)")
        self.navigationController?.popViewController(animated: true)
        

    }
}
