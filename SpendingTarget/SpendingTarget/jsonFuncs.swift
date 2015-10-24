//
//  jsonFuncs.swift
//  SpendingTarget
//
//  Created by Connick Shields on 10/24/15.
//  Copyright © 2015 CLM. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire

class jsonFuncs {
    
    func getJSON(url:String, completionHandler: (JSON -> Void)) -> Void {
        Alamofire.request(.GET, url, parameters: ["foo": "bar"])
            .responseJSON { response in
                debugPrint(response)     // prints detailed description of all response properties
                
                print(response.request)  // original URL request
                print(response.response) // URL response
                print(response.data)     // server data
                print(response.result)   // result of response serialization
                
                if let json = response.result.value {
                    completionHandler(json as! JSON)
                }
        }
    }
}