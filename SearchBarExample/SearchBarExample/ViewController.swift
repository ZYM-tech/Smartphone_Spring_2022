//
//  ViewController.swift
//  SearchBarExample
//
//  Created by 张一鸣 on 2022/3/6.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    var namesArray = ["Ashish", "Ashley","Amanda", "Mark", "Mike", "Marissa","Mary"]
    var copyArray = ["Ashish", "Ashley","Amanda", "Mark", "Mike", "Marissa","Mary"]
    
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = namesArray[indexPath.row]
        return cell;
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        //如果searchBar.text 非空（写法1）
        if searchBar.text!.isEmpty == true{
            namesArray = copyArray
            tblView.reloadData()
            return
        }
        //也可以写成下面这种
        /*
        //如果searchBar.text 非空（写法2）
        guard !searchBar.text!.isEmpty else{
            //加载原数组
            namesArray = copyArray
            tblView.reloadData()
            return
        }
        */
        
        namesArray = copyArray.filter({ name in
            name.lowercased().contains(searchBar.text!.lowercased())
        })
        
        tblView.reloadData()
        
    }

}

