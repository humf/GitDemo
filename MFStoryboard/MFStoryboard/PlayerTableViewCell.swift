//
//  PlayerTableViewCell.swift
//  MFStoryboard
//
//  Created by 胡淼枫 on 16/7/29.
//  Copyright © 2016年 胡淼枫. All rights reserved.
//

import UIKit

class PlayerTableViewCell: UITableViewCell {
    @IBOutlet weak var name: UILabel!

    @IBOutlet weak var game: UILabel!
    @IBOutlet weak var starImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
