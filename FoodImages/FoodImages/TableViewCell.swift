//
//  TableViewCell.swift
//  FoodImages
//
//  Created by 张一鸣 on 2022/2/4.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lblView: UILabel!
    @IBOutlet weak var ImgViewCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
