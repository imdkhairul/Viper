//
//  BMWebServiceStylesUrlGenerator.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/3/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import Foundation

class BMWebServiceStylesUrlGenerator: BMWebServiceUrlGenerator
{
    static func stylesListUrl() -> String
    {
        return concatUrl(BMWebServiceUrls.BMStylesListUrls.kBMWebServiceStylesListUrl)
    }
}
