//
//  BMExteriorModel.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/18/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

struct BMExteriorModelDictionaryKeys
{
    static let kid = "id"
    static let kExteriorkey = "exterior_key"
    static let kExteriorValue = "exterior_value"
}

class BMExteriorModel: NSObject
{
    var id:String?
    var exteriorKey:String?
    var exteriorValue:String?
    
    convenience init(dictionary:[String:Any])
    {
        self.init()
        if let id = dictionary[BMExteriorModelDictionaryKeys.kid] as? String
        {
            self.id = id
        }
        if let exteriorkey = dictionary[BMExteriorModelDictionaryKeys.kExteriorkey] as? String
        {
            self.exteriorKey = exteriorkey
        }
        if let exteriorvalue = dictionary[BMExteriorModelDictionaryKeys.kExteriorValue] as? String
        {
            self.exteriorValue = exteriorvalue
        }
    }
}
