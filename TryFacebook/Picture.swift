//
//  image.swift
//  TryFacebook
//
//  Created by Kyle on 2016/6/4.
//  Copyright © 2016年 Alphacamp. All rights reserved.
//

import UIKit

class Picture: NSObject {
    
    var name:String
    var nameNumber:Int
    
    init(name:String, nameNumber:Int){
        self.name = name
        self.nameNumber = nameNumber
    }
}

var pictureArray = [
        Picture(name: "Smeil", nameNumber: 0),
        Picture(name: "PoliceLady", nameNumber: 0),
        Picture(name: "Miss", nameNumber: 0),
        Picture(name: "Mary", nameNumber: 0),
        Picture(name: "Love", nameNumber: 0),
        Picture(name: "Happy", nameNumber: 0),
        Picture(name: "Cute", nameNumber: 0),
        Picture(name: "Working", nameNumber: 0),
        Picture(name: "Good", nameNumber: 0)
    ]
    
