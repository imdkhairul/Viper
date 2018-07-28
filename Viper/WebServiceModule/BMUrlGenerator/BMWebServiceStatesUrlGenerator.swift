//
//  BMWebServiceStatesUrlGenerator.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/3/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import Foundation

class BMWebServiceStatesUrlGenerator: BMWebServiceUrlGenerator
{
    static func stateListUrl() -> String
    {
        return concatUrl(BMWebServiceUrls.BMStateListUrls.kBMWebServiceStateListUrl)
    }
}
