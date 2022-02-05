//
//  ViewController.swift
//  CustomTableViewCell
//
//  Created by 张一鸣 on 2022/2/4.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tblView: UITableView!
    let images = ["Seattle1", "Seattle2", "Seattle3", "Seattle4", "Seattle5","Seattle6", "Seattle7","Seattle8","Seattle9","Seattle10"]
    
    let imgNames = ["img1","img2","img3","img4","img5","img6","img7","img8","img9","img10"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.imgView.image = UIImage(named: images[indexPath.row])
        cell.lblCell.text = imgNames[indexPath.row]
        return cell
    }
}

