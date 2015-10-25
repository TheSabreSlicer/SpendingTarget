//
//  searchItems.swift
//  SpendingTarget
//
//  Created by Connick Shields on 10/24/15.
//  Copyright © 2015 CLM. All rights reserved.
//

import Foundation

class searchItems {
    
    var tcinArray = [17315174,16811585,13533304,16836633,10708662,10692335,15640645,17348417,14423834,17315174,14303437,13614316,14051076,21456385,14199672,16836633,10029875,16604462,16728627,13288321,15401184,15007426,14439486,16623896,14048471,13514336]
    
    var productArray = [Product]()
    
    func initSearch() -> Void {
        print("searchVC init")
        for x in tcinArray {
            productArray.append(Product(tcn: x))
        }
    }
    
    func search(s:String) -> [Product] {
        var newArr = [Product]()
        for p in productArray {
            if((p.name.rangeOfString(s)) != nil) {
                newArr.append(p)
            }
        }
        return newArr
    }
    
}