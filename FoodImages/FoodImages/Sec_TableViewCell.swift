//
//  Sec_TableViewCell.swift
//  FoodImages
//
//  Created by 张一鸣 on 2022/2/9.
//

import UIKit

class Sec_TableViewCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var lblImage: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
