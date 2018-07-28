//
//  BMStateModel.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/18/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

struct BMStateModelDictionaryKeys {
    static let kid = "id"
    static let kName = "name"
    static let kCountryid = "country_id"
}

class BMStateModel: NSObject
{
    var id:String?
    var name:String?
    var countryid:String?
    
    convenience init(dictionary:[String:Any])
    {
        self.init()
        if let id = dictionary[BMStateModelDictionaryKeys.kid] as? String
        {
            self.id = id
        }
        if let name = dictionary[BMStateModelDictionaryKeys.kName] as? String
        {
            self.name = name
        }
        if let countryid = dictionary[BMStateModelDictionaryKeys.kCountryid] as? String
        {
            self.countryid = countryid
        }
    }
}
