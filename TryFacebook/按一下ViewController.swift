//
//  按一下ViewController.swift
//  TryFacebook
//
//  Created by Kyle on 2016/6/8.
//  Copyright © 2016年 Alphacamp. All rights reserved.
//

import UIKit

class 按一下ViewController: UIViewController{
    
    @IBAction func 按一下(sender: AnyObject) {
        let alert = UIAlertController(title: "驚奇箱", message: "選一張圖片吧", preferredStyle: .ActionSheet)
        
        for picture in pictureArray{
            let action = UIAlertAction(title: picture.name, style: .Default, handler: { (UIAlerAction) in
                
                self.performSegueWithIdentifier("按一下segue", sender: picture.name)
                
            })
            alert.addAction(action)
        }
        
        let actionReallyNo = UIAlertAction(title: "Yes", style: .Default, handler: nil)
        let actionChangeMind = UIAlertAction(title: "No", style: .Default) { (UIAlertAction) in
           
        self.presentViewController(alert, animated: true, completion: nil)
            
    
        }
        
        let actionMessage = UIAlertAction(title: "Cancel", style: .Cancel) { (UIAlertAction) in
            
            let anotherAlert = UIAlertController(title: "really", message: nil, preferredStyle: .Alert)
            anotherAlert.addAction(actionReallyNo)
            anotherAlert.addAction(actionChangeMind)

            
            self.presentViewController(anotherAlert, animated: true, completion: nil)
            
        }
        alert.addAction(actionMessage)
        
        self.presentViewController(alert, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        if segue.identifier == "按一下segue"{
            let destinationViewController = segue.destinationViewController as! BigImageViewController
            
            let image = sender as! String
            
            destinationViewController.imageName = image
            
            
        }
    }
    


 
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
