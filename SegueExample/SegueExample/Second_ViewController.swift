//
//  Second_ViewController.swift
//  SegueExample
//
//  Created by 张一鸣 on 2022/2/6.
//

import UIKit

class Second_ViewController: UIViewController {

    @IBOutlet weak var lblWelcome: UILabel!
    var welcomeStr = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblWelcome.text = welcomeStr

    }

}
