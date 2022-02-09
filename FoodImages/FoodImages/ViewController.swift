//
//  ViewController.swift
//  FoodImages
//
//  Created by 张一鸣 on 2022/2/4.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let img = ["Char Siu","Chow Mein","Dim Sum","Dumplings","Fried Rice","Hot Pot","Kung Pao Chicken","Ma Po Tofu","Peking Roasted Duck","Sweet and Sour Pork"]
    let names = ["Char Siu 叉烧肉","Chow Mein 炒面","Dim Sum 点心","Dumplings 饺子","Fried Rice 炒饭","Hot Pot 火锅","Kung Pao Chicken 宫保鸡丁","Ma Po Tofu 麻婆豆腐","Peking Roasted Duck 北京烤鸭","Sweet and Sour Pork 糖醋里脊"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return img.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /*
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.ImgViewCell.image = UIImage(named: img[indexPath.row])
        cell.lblView.text = names[indexPath.row]
        return cell
         */
        
        let cell = Bundle.main.loadNibNamed("Sec_TableViewCell", owner: self, options: nil)?.first as! Sec_TableViewCell
        cell.imgView.image = UIImage(named: img[indexPath.row])
        cell.lblImage.text = names[indexPath.row]
        return cell
    }
}

