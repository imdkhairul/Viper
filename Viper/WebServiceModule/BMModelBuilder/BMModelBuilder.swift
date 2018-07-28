//
//  BMModelBuilder.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/4/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

struct BMResponseDictioanryKeys
{
    static let kStatusKey = "status"
    static let kDataKey = "data"
    static let kMessageKey = "msg"
}


class BMModelBuilder
{
    private var responseDictionary:[String:Any]?
    
    convenience init(jsondata:Data)
    {
        self.init()
        do {
            responseDictionary = try JSONSerialization.jsonObject(with: jsondata as Data, options:JSONSerialization.ReadingOptions(rawValue: UInt(0))) as? [String:Any]
        }
        catch{
            print(error)
        }
    }
    
    func getResponseData() -> [[String:Any]]?
    {
        if let response = responseDictionary?[BMResponseDictioanryKeys.kDataKey]
        {
            return (response as! [[String : Any]])
        }
        else
        {
            return nil
        }
    }
    
    func getStatus() -> Bool
    {
        if let status = responseDictionary?[BMResponseDictioanryKeys.kStatusKey]
        {
            if (status as! Int) == 1
            {
                return true
            }
            else
            {
                return false
            }
        }
        else
        {
            return false
        }
    }
    
    func getResponseMessage() -> String
    {
        if let message = responseDictionary?[BMResponseDictioanryKeys.kMessageKey]
        {
            return message as! String
        }
        else
        {
            return ""
        }
    }
    
}
