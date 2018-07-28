//
//  BMBuyerModel.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/4/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

struct BMBuyerModelDictionaryKeys
{
    static let kid = "id"
    static let kFirstName = "first_name"
    static let kLastName = "last_name"
    static let kEmail = "email"
    static let kPhone = "phone"
    static let kPassword = "password"
}

class BMBuyerModel: NSObject
{
    var id:String?
    var firstName:String?
    var lastName:String?
    var email:String?
    var password:String?
    var phone:String?
    
    convenience init(dictionary:[String:Any])
    {
        self.init()
        if let id = dictionary[BMBuyerModelDictionaryKeys.kid] as? String
        {
            self.id = id
        }
        if let firstname = dictionary[BMBuyerModelDictionaryKeys.kFirstName] as? String
        {
            self.firstName = firstname
        }
        if let lastname = dictionary[BMBuyerModelDictionaryKeys.kLastName] as? String
        {
            self.lastName = lastname
        }
        if let email = dictionary[BMBuyerModelDictionaryKeys.kEmail] as? String
        {
            self.email = email
        }
        if let phone = dictionary[BMBuyerModelDictionaryKeys.kPhone] as? String
        {
            self.phone = phone
        }
        if let password = dictionary[BMBuyerModelDictionaryKeys.kPassword] as? String
        {
            self.password = password
        }
    }
}
