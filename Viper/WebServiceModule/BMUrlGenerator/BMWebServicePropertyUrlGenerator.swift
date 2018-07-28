//
//  BMWebServicePropertyUrlGenerator.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/3/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import Foundation

class BMWebServicePropertyUrlGenerator:BMWebServiceUrlGenerator
{
    static func propertyListUrl() -> String
    {
        return super.concatUrl(BMWebServiceUrls.BMPropertyUrls.kBMWebServicePropertyListUrl)
    }
    
    static func propertyListByBuyerIDUrl() -> String
    {
        return super.concatUrl(BMWebServiceUrls.BMPropertyUrls.kBMWebServicePropertyListByBuyeridUrl)
    }
    
    static func deletepropertyUrl() -> String
    {
        return super.concatUrl(BMWebServiceUrls.BMPropertyUrls.kBMWebServiceDeletePropertyUrl)
    }
    
    static func addpropertyUrl() -> String
    {
        return super.concatUrl(BMWebServiceUrls.BMPropertyUrls.kBMWebServiceAddPropertyUrl)
    }
    
    static func searchPropertyUrl() -> String
    {
        return super.concatUrl(BMWebServiceUrls.BMPropertyUrls.kBMWebServiceSearchPropertyUrl)
    }
}
