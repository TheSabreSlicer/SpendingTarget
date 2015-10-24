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
                if (response.data != nil) {
                    completionHandler(JSON.init(data: response.data!))
                }
        }
    }
}