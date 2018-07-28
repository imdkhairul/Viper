//
//  BMWebServicePropertyTypeUrlGenerator.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/18/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

class BMWebServicePropertyTypeUrlGenerator: BMWebServiceUrlGenerator {

    class func getPropertyTypeUrl() -> String
    {
        return concatUrl(BMWebServiceUrls.BMPropertyTypeUrls.kBMWebServiceTypeListUrl)
    }
    
}
