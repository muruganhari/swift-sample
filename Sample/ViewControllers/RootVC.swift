//
//  RootVC.swift
//  Sample
//
//  Created by BLT0013-MACMI on 8/10/17.
//  Copyright © 2017 Claysol Medial Lab. All rights reserved.
//

import UIKit

class RootVC: UIViewController,sampleDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func backbtn()
    {
        let backButton = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.Plain, target: self, action: #selector(self.backAction))
        
        self.navigationItem.leftBarButtonItem  = backButton
    }
    func alert()->UIAlertView
    {
        let alert:UIAlertView=UIAlertView(title: "Welcome", message: "Hi congratulations welcome to our new team", delegate: self, cancelButtonTitle: "Ok")
        alert.show()
        return alert
    }
    func alertController(){
        let alertController = UIAlertController(title: "Welcome", message: "This is new alert controller", preferredStyle: .Alert)
        
        let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alertController.addAction(action)
        
        presentViewController(alertController, animated: true, completion: nil)
    }
    func backAction() -> Void {
       self.navigationController?.popViewControllerAnimated(false)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    func getMsg(msg: NSString)
    {
        print(msg)
    }
    
}
