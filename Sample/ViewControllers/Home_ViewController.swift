//
//  ViewController2.swift
//  Sample
//
//  Created by BLT0013-MACMI on 8/10/17.
//  Copyright © 2017 Claysol Medial Lab. All rights reserved.
//

import UIKit

protocol sampleDelegate:class {
    func getMsg(msg: NSString)
}
enum Climate {
    case GET
    case POST
    case PUT
    case DELETE
}

class Home_ViewController: RootVC {

    let sampleDict: NSDictionary = NSDictionary()
    weak var delegate = sampleDelegate?()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backbtn()
        
        let commonObj=Common().sharedInstance
        print(commonObj.username)
        
        /****Collect UINavigation ViewControllers*****/
        let allViewC: [UIViewController] = (self.navigationController?.viewControllers)! as [UIViewController]
        for singleVC:UIViewController in allViewC
        {
            if(singleVC.isKindOfClass(Home_ViewController))
            {
                print("Having Home view controller class")
            }
        }
        /*****************************************/
        
        
        /***********Inline Closure*************/
        let s={(a:Int,b:Int)->Int in return a+b}
        print(s(5,25))
        /*****************************************/
        
        
        /**************Enumeration Call***************/
        
        var season = Climate.GET
        season = .GET
        switch season {
        case .GET:
            print("Get method")
        case .POST:
            print("Post method")
        case .PUT:
            print("Put method")
        case .DELETE:
            print("Delete method")
        default:
            print("Climate is not predictable")
        }
        /*****************************************/
        

        
        /************** Guard ***************/
        
        var isReachable = false
        guard isReachable else{
            isReachable = true
            return
        }
        
        /*****************************************/
//        NSNotificationCenter.defaultCenter().addObserver(self, selector:selector("get"), name: "sample_post", object: self)
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidDisappear(animated: Bool) {
        super.viewDidAppear(true)
        let commonObj=Common()
        print(commonObj.username)
        
    }
//    override func backAction() -> Void {
//        delegate?.getMsg("Good morning")
//        print(commonAppName)
//        NSNotificationCenter.defaultCenter().postNotificationName("sample_post", object: nil)
//        self.navigationController?.popViewControllerAnimated(false)
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
