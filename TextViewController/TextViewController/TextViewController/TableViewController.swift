//
//  TableViewController.swift
//  TextViewController
//
//  Created by 张一鸣 on 2022/2/4.
//

import UIKit

class TableViewController: UITableViewController {
    
    let arr = ["a","b","c","d","e"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arr.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = arr[indexPath.row]

        // Configure the cell...

        return cell
    }

}
