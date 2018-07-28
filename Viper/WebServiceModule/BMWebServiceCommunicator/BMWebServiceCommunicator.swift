//
//  BMWebServiceCommunicator.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/2/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit
import Alamofire

typealias PostRequestResponse = (_ responseData:Data) -> Void

class BMWebServiceCommunicator
{
    class func sendPostRequest(_ url:String,_ parameters:[String:Any],completion:@escaping PostRequestResponse)
    {
        print("Request url: \(url)")
        Alamofire.request(url, method: .post, parameters: parameters,encoding: JSONEncoding.default).responseJSON { (response) in
            if let data = response.data{
                completion(data)
            }
        }
    }
    
    class func sendGetRequest(_ url:String,completion:@escaping PostRequestResponse)
    {
        print("Request url: \(url)")
        Alamofire.request(url, method: .get,encoding: JSONEncoding.default).responseJSON { (response) in
            if let data = response.data{
                completion(data)
            }
        }
    }
}
