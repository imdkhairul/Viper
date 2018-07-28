//
//  BMCountryModel.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/18/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

struct BMCountryModelDictionaryKeys {
    static let kid = "id"
    static let kName = "country_name"
    static let kStates = "states"
}

class BMCountryModel: NSObject
{
    var id:String?
    var name:String?
    var sTates:[BMStateModel] = []
    
    convenience init(dictionary:[String:Any])
    {
        self.init()
        if let id = dictionary[BMCountryModelDictionaryKeys.kid] as? String
        {
            self.id = id
        }
        if let name = dictionary[BMCountryModelDictionaryKeys.kName] as? String
        {
            self.name = name
        }
        if let states = dictionary[BMCountryModelDictionaryKeys.kStates] as? [[String:Any]]
        {
            states.forEach({ (dictionary) in
                sTates.append(BMStateModel(dictionary: dictionary))
            })
        }
    }

}
