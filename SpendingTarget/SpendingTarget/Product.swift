//
//  Product.swift
//  SpendingTarget
//
//  Created by Logan Graybill on 10/24/15.
//  Copyright (c) 2015 CLM. All rights reserved.
//
import UIKit
import SwiftyJSON
import Alamofire

class Product {
    
    var name : String = ""
    
    var img_url : String = ""
    
    var currentPrice : Double = 0
    var originalPrice : Double = 0
    var listPrice : Double = 0
    var tcin : Int = 0
    var url : String
    var pJSON : JSON?
    
    func setPrice(currentPrice : Double) {
        self.currentPrice = currentPrice
    }
    
    func setPrice(currentPrice : Double, originalPrice : Double) {
        self.currentPrice = currentPrice
        self.originalPrice = originalPrice
    }
    
    func setPrice(currentPrice : Double, originalPrice : Double, listPrice : Double) {
        self.currentPrice = currentPrice
        self.originalPrice = originalPrice
        self.listPrice = listPrice
    }
    
    init(tcn : Int) {
        self.tcin = tcn
        self.url = "https://api.target.com/items/v3/"+String(self.tcin)+"?id_type=tcin&fields=pricing,images&key=1Kfdqvy6wHmvJ4LDyAVOl7saCBoKHcSb"
        getJSON(url, completionHandler:handleResponse)
    }
    
    func getJSON(url:String, completionHandler: (JSON -> Void)) -> Void {
        Alamofire.request(.GET, url, parameters: ["foo": "bar"])
            .responseJSON { response in
                if (response.data != nil) {
                    completionHandler(JSON.init(data: response.data!))
                }
        }
    }
    
    func handleResponse(response: JSON) {
        self.pJSON = response
        if let a = self.pJSON {
            name = a["product_composite_response"]["items"][0]["general_description"].stringValue
            img_url = a["product_composite_response"]["items"][0]["image"]["internal_primary_image_url"][0].stringValue
            currentPrice = Double(a["product_composite_response"]["items"][0]["online_price"]["current_price"].stringValue)!
            originalPrice = Double(a["product_composite_response"]["items"][0]["online_price"]["original_price"].stringValue)!
            listPrice = Double(a["product_composite_response"]["items"][0]["online_price"]["list_price"].stringValue)!
        }

    }
    
}