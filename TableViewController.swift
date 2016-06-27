//
//  TableTableViewController.swift
//  TryFacebook
//
//  Created by Kyle on 2016/6/3.
//  Copyright © 2016年 Alphacamp. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController{
    
     @IBAction func 編輯(sender: AnyObject) {
        
        self.tableView.setEditing(!self.tableView.editing, animated: true)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    

        
        self.tableView.registerNib(UINib(nibName:"FacebookTableViewCell", bundle:nil),forCellReuseIdentifier: "facebookcell")
        
        
        self.tableView.estimatedRowHeight = 80
        self.tableView.rowHeight = UITableViewAutomaticDimension
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return pictureArray.count + 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        switch indexPath.section{
        
        case 0:
            let cell = tableView.dequeueReusableCellWithIdentifier("mycell", forIndexPath: indexPath) as! MyCell
            
            cell.myCell在想什麼.text = "在想些什麼？"
            cell.myCellImage.image = UIImage(named: "我真帥")
            
            cell.myCellImage.layer.cornerRadius = 25.0
            cell.myCellImage.clipsToBounds = true
            
            
            
            return cell
            
        default:
            let cell2 = tableView.dequeueReusableCellWithIdentifier("facebookcell", forIndexPath: indexPath) as! FacebookTableViewCell
            
            cell2.id = indexPath.section - 1
            
            cell2.userName.text = pictureArray[indexPath.section - 1].name
            cell2.cellImage.image = UIImage(named: pictureArray[indexPath.section - 1].name)
            cell2.conTent.text = Message.message[indexPath.section - 1]
            // Configure the cell...
            
            cell2.讚數量label.text = String(pictureArray[indexPath.section - 1].nameNumber)
                
                
            cell2.cellImage.layer.cornerRadius = 50.0
            cell2.cellImage.clipsToBounds = true
            
                       return cell2
            
            }
    }
    
    
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return " "
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch indexPath.section{
        case 0 :
            self.performSegueWithIdentifier("showDetail", sender: "我真帥")
        default:
            self.performSegueWithIdentifier("showImage", sender: pictureArray[indexPath.section - 1].name)
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
    if segue.identifier == "showImage"{
    let destinationViewController = segue.destinationViewController as! BigImageViewController
        
        let image = sender as! String
        
        destinationViewController.imageName = image
    }else if segue.identifier == "showDetail"{
        
        let destinationViewController = segue.destinationViewController as! BigImageViewController
        
        let image = sender as! String
        
        destinationViewController.imageName = image
        }
    }
    

    override func tableView(tableView:UITableView, canEditRowAtIndexPath indexPath:NSIndexPath) -> Bool{
        if indexPath.section >= 1{
        return true
        }else{
            return false
        }
    }

    

    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
       
        if editingStyle == .Delete {
            // Delete the row from the data source
            
                pictureArray.removeAtIndex(indexPath.section - 1)
                tableView.beginUpdates()
                let indexSet = NSMutableIndexSet()
                indexSet.addIndex(indexPath.section)
                //            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
                tableView.deleteSections(indexSet, withRowAnimation: .Fade )
                tableView.endUpdates()
            
        }
    }
    
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath : NSIndexPath) {
    
        let move = pictureArray.removeAtIndex(fromIndexPath.section - 1)
        pictureArray.insert(move, atIndex: toIndexPath.section - 1)
        
         tableView.reloadData()
        
    }
    
   
     /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}

