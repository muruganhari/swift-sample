//
//  Common.swift
//  Sample
//
//  Created by BLT0013-MACMI on 8/10/17.
//  Copyright © 2017 Claysol Medial Lab. All rights reserved.
//

import UIKit
import Alamofire
var commonAppName = "Sample"
let version: Int = 1
class Common: NSObject {

    func intRet(a:NSString)->Int
    {
        let ak:Int=a.integerValue
        return ak;
    }
    func getRequest(params : NSDictionary,url: NSURL,completionHandler: (response: AnyObject?, error: String?) -> Void)
    {
       // let api: NSString=""
        Alamofire.request(.GET, url, parameters: params as? [String : AnyObject])
            .responseJSON { _, _, result in
                if result.isSuccess {
                    //print(result.value)
                    completionHandler(response: result.value as? NSDictionary, error: nil)
                }
                else{
                    let errorResult: AnyObject = ["Result":"Failure"]
                    completionHandler(response: errorResult as? NSDictionary, error: "Failure")
                }
        }
    }
}
