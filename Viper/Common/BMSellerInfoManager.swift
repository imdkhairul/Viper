//
//  BMSellerInfoManager.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/15/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

class BMSellerInfoManager {

    static let sharedInstance = BMSellerInfoManager()
    
    func isSellerInfoSaved() -> Bool
    {
        let userDefaults = UserDefaults.standard
        if let _ = userDefaults.string(forKey: BMSellerModelDictionaryKeys.kid){
            return true
        }
        return false
    }
    
    func clearSellerInfo()
    {
         let userDefaults = UserDefaults.standard
        userDefaults.removeObject(forKey: BMSellerModelDictionaryKeys.kid)
    }
    
    func saveSellerInformation(userid:String,firstName:String,lastName:String,password:String,phoneNumber:String,email:String)
    {
        let userDefaults = UserDefaults.standard
        userDefaults.set(userid, forKey: BMSellerModelDictionaryKeys.kid)
        userDefaults.set(firstName, forKey: BMSellerModelDictionaryKeys.kFirstName)
        userDefaults.set(lastName, forKey:BMSellerModelDictionaryKeys.kLastName)
        userDefaults.set(phoneNumber, forKey:BMSellerModelDictionaryKeys.kPhone)
        userDefaults.set(email, forKey: BMSellerModelDictionaryKeys.kEmail)
        userDefaults.set(password, forKey: BMSellerModelDictionaryKeys.kPassword)
    }
    
    func sellerInformation() ->(id:String,firstName:String,lastName:String,phone:String,email:String,password:String)
    {
        let userDefaults = UserDefaults.standard
        return(userDefaults.value(forKey: BMSellerModelDictionaryKeys.kid) as! String,userDefaults.value(forKey: BMSellerModelDictionaryKeys.kFirstName) as! String,userDefaults.value(forKey: BMSellerModelDictionaryKeys.kLastName) as! String,userDefaults.value(forKey: BMSellerModelDictionaryKeys.kPhone) as! String,
               userDefaults.value(forKey: BMSellerModelDictionaryKeys.kEmail) as! String,userDefaults.value(forKey: BMSellerModelDictionaryKeys.kPassword) as! String)
    }
}
