//
//  FacebookTableViewCell.swift
//  TryFacebook
//
//  Created by Kyle on 2016/6/3.
//  Copyright © 2016年 Alphacamp. All rights reserved.
//

import UIKit


class FacebookTableViewCell: UITableViewCell {
   
    
    var id = 0
    var check = false
    
    @IBOutlet weak var 讚數量label: UILabel!
    @IBOutlet weak var cellImage: UIImageView!
 
    @IBOutlet weak var userName: UILabel!
    
    @IBOutlet weak var conTent: UILabel!
    
    @IBAction func 讚button(sender: AnyObject) {
       
        check = !check
        if check{
        pictureArray[id].nameNumber = 1
        self.讚數量label.text = String(pictureArray[id].nameNumber)
        }else{
            pictureArray[id].nameNumber = 0
            self.讚數量label.text = String(pictureArray[id].nameNumber)
        }
        
        
    }
    
   
    
    
    
        
    @IBAction func 留言button(sender: AnyObject) {
    }
    
    @IBAction func 分享button(sender: AnyObject) {
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

