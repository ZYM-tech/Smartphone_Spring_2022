//
//  ViewController.swift
//  TableViewXibFile
//
//  Created by 张一鸣 on 2022/2/6.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tblTableView: UITableView!
    
    
    let img = ["Seattle1","Seattle2","Seattle3","Seattle4","Seattle5","Seattle6","Seattle7","Seattle8","Seattle9","Seattle10"]
    
    let imgNames = ["Seattle1","Seattle2","Seattle3","Seattle4","Seattle5","Seattle6","Seattle7","Seattle8","Seattle9","Seattle10"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return img.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
        
        cell.imgView.image = UIImage(named: img[indexPath.row])
        cell.lblImage.text = imgNames[indexPath.row]
        
        return cell
    }
    
}

