//
//  BMWebServiceExteriorUrlGenerator.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/3/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import Foundation

class BMWebServiceExteriorUrlGenerator: BMWebServiceUrlGenerator
{
    static func exteriorListUrl() -> String
    {
        return concatUrl(BMWebServiceUrls.BMExteriorListUrls.kBMWebServiceExteriorListUrl)
    }
}
