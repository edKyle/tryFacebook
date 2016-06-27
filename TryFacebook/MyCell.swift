//
//  MyCell.swift
//  TryFacebook
//
//  Created by Kyle on 2016/6/5.
//  Copyright © 2016年 Alphacamp. All rights reserved.
//

import UIKit

class MyCell: UITableViewCell {

    @IBOutlet weak var myCellImage: UIImageView!
    @IBOutlet weak var myCell在想什麼: UILabel!
    @IBOutlet weak var myCell近況: UIButton!
    @IBOutlet weak var myCell相片buttom: UIButton!
    @IBOutlet weak var myCell打卡buttom: UIButton!
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
