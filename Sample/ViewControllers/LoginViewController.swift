//
//  ViewController.swift
//  Sample
//
//  Created by BLT0013-MACMI on 8/9/17.
//  Copyright © 2017 Claysol Medial Lab. All rights reserved.
//

import UIKit
import Alamofire

class LoginViewController: RootVC {

    let commonObj=Common().sharedInstance
    
    @IBOutlet var txtUsername: UITextField!
    
    @IBOutlet var txtPwd: UITextField!
    @IBAction func btnLogin(sender: AnyObject) {
        
        
        let sb=UIStoryboard(name:"Main",bundle: nil)
        let home=sb.instantiateViewControllerWithIdentifier("Home_ViewController") as! Home_ViewController
        home.delegate=self
        self.navigationController!.pushViewController(home, animated: false)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title="Login"
        self.getMethod()
        
        commonObj.username = "sample app"
        print(commonObj.username)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(get), name: "sample_post", object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func getMethod(){
//        let params:NSDictionary=["":"bar"]
//        Alamofire.request(.GET, "http://httpbin.org/get", parameters: params as? [String : AnyObject])
//            .responseJSON { _, _, result in
//                return result
//        }
        
        let Api = NSURL(string: "http://httpbin.orgsa/get")!
        let param:NSDictionary=["foo":"bar"]
        commonObj.getRequest(param,url: Api,completionHandler: { (response, error) in
            if response != nil {
//                let dict:[String:AnyObject] = (response as? [String:AnyObject])!
                
                let dict:NSDictionary = response! as! NSDictionary
                print("Result:---> \(dict)")
            }
        })
    }
    func get(){
        let alert:UIAlertView=UIAlertView.init(title: "Welcome", message: "first post message", delegate: self, cancelButtonTitle: "Ok")
        alert.show()
        
    }
    
}

