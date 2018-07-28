//
//  BMPropertyTypeModel.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/18/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

struct BMPropertyTypeModelDictionaryKeys
{
    static let kid = "id"
    static let kPropertykey = "property_key"
    static let kPropertyValue = "property_value"
}

class BMPropertyTypeModel: NSObject
{
    var id:String?
    var propertyKey:String?
    var propertyValue:String?
    
    convenience init(dictionary:[String:Any])
    {
        self.init()
        if let id = dictionary[BMPropertyTypeModelDictionaryKeys.kid] as? String
        {
            self.id = id
        }
        if let propertykey = dictionary[BMPropertyTypeModelDictionaryKeys.kPropertykey] as? String
        {
            self.propertyKey = propertykey
        }
        if let propertyvalue = dictionary[BMPropertyTypeModelDictionaryKeys.kPropertyValue] as? String
        {
            self.propertyValue = propertyvalue
        }
    }
}
