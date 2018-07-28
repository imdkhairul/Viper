//
//  BMBuyerInfoManager.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/18/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

class BMBuyerInfoManager: NSObject
{
    static let sharedInstance = BMBuyerInfoManager()
    
    func isBuyerInfoSaved() -> Bool
    {
        let userDefaults = UserDefaults.standard
        if let _ = userDefaults.string(forKey: "buyer"+BMBuyerModelDictionaryKeys.kid){
            return true
        }
        return false
    }
    
    func clearBuyerInfo()
    {
        let userDefaults = UserDefaults.standard
        userDefaults.removeObject(forKey: "buyer"+BMBuyerModelDictionaryKeys.kid)
    }
    
    func saveBuyerInformation(userid:String,firstName:String,lastName:String,password:String,phoneNumber:String,email:String)
    {
        let userDefaults = UserDefaults.standard
        userDefaults.set(userid, forKey: "buyer"+BMBuyerModelDictionaryKeys.kid)
        userDefaults.set(firstName, forKey: "buyer"+BMBuyerModelDictionaryKeys.kFirstName)
        userDefaults.set(lastName, forKey:"buyer"+BMBuyerModelDictionaryKeys.kLastName)
        userDefaults.set(phoneNumber, forKey:"buyer"+BMBuyerModelDictionaryKeys.kPhone)
        userDefaults.set(email, forKey: "buyer"+BMBuyerModelDictionaryKeys.kEmail)
        userDefaults.set(password, forKey: "buyer"+BMBuyerModelDictionaryKeys.kPassword)
    }
    
    func BuyerInformation() ->(id:String,firstName:String,lastName:String,phone:String,email:String,password:String)
    {
        let userDefaults = UserDefaults.standard
        return(userDefaults.value(forKey: "buyer"+BMBuyerModelDictionaryKeys.kid) as! String,userDefaults.value(forKey: "buyer"+BMBuyerModelDictionaryKeys.kFirstName) as! String,userDefaults.value(forKey: "buyer"+BMBuyerModelDictionaryKeys.kLastName) as! String,userDefaults.value(forKey: "buyer"+BMBuyerModelDictionaryKeys.kPhone) as! String,
               userDefaults.value(forKey: "buyer"+BMBuyerModelDictionaryKeys.kEmail) as! String,userDefaults.value(forKey: "buyer"+BMBuyerModelDictionaryKeys.kPassword) as! String)
    }
}
