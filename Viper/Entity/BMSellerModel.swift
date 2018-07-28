//
//  BMSellerModel.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/5/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

struct BMSellerModelDictionaryKeys
{
    static let kid = "id"
    static let kFirstName = "first_name"
    static let kLastName = "last_name"
    static let kEmail = "email"
    static let kPhone = "phone"
    static let kPassword = "password"
}

class BMSellerModel: NSObject
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
        if let id = dictionary[BMSellerModelDictionaryKeys.kid] as? String
        {
            self.id = id
        }
        if let firstname = dictionary[BMSellerModelDictionaryKeys.kFirstName] as? String
        {
            self.firstName = firstname
        }
        if let lastname = dictionary[BMSellerModelDictionaryKeys.kLastName] as? String
        {
            self.lastName = lastname
        }
        if let email = dictionary[BMSellerModelDictionaryKeys.kEmail] as? String
        {
            self.email = email
        }
        if let phone = dictionary[BMSellerModelDictionaryKeys.kPhone] as? String
        {
            self.phone = phone
        }
        if let password = dictionary[BMSellerModelDictionaryKeys.kPassword] as? String
        {
            self.password = password
        }
    }
}

