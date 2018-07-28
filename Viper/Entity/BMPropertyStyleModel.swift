//
//  BMPropertyStyleModel.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/18/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

struct BMPropertyStyleModelDictionaryKeys
{
    static let kid = "id"
    static let kStylekey = "style_key"
    static let kStyleValue = "style_vaue"
}

class BMPropertyStyleModel: NSObject
{
    var id:String?
    var styleKey:String?
    var styleValue:String?
    
    convenience init(dictionary:[String:Any])
    {
        self.init()
        if let id = dictionary[BMPropertyStyleModelDictionaryKeys.kid] as? String
        {
            self.id = id
        }
        if let stylekey = dictionary[BMPropertyStyleModelDictionaryKeys.kStylekey] as? String
        {
            self.styleKey = stylekey
        }
        if let stylevalue = dictionary[BMPropertyStyleModelDictionaryKeys.kStyleValue] as? String
        {
            self.styleValue = stylevalue
        }
    }
}
