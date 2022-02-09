//
//  Second_ViewController.swift
//  Week3.1
//
//  Created by 张一鸣 on 2022/2/8.
//

import UIKit

class Second_ViewController: UIViewController {

    @IBOutlet weak var lblText: UILabel!
    var txtStr = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblText.text = txtStr

    }
    
    @IBAction func goBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
