//
//  BigImageViewController.swift
//  TryFacebook
//
//  Created by Kyle on 2016/6/6.
//  Copyright © 2016年 Alphacamp. All rights reserved.
//

import UIKit

class BigImageViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var bigImageView: UIImageView!
    @IBOutlet weak var bigScrowView: UIScrollView!
  
    var imageName:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = imageName

        bigImageView.image = UIImage(named: imageName!)
        
        self.bigScrowView.delegate = self
        
        self.bigScrowView.maximumZoomScale = 5.0
        self.bigScrowView.minimumZoomScale = 1
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {

        return self.bigImageView
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnSwipe = true
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
