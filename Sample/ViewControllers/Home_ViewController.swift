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
class Home_ViewController: RootVC {

    let sampleDict: NSDictionary = NSDictionary()
    weak var delegate = sampleDelegate?()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backbtn()
        
        let allViewC: [UIViewController] = (self.navigationController?.viewControllers)! as [UIViewController]
        
        for singleVC:UIViewController in allViewC
        {
            if(singleVC.isKindOfClass(Home_ViewController))
            {
                print("Having Home view controller class")
            }
        }
        
//        NSNotificationCenter.defaultCenter().addObserver(self, selector:selector("get"), name: "sample_post", object: self)
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidDisappear(animated: Bool) {
        super.viewDidAppear(true)
        
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
