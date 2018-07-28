//
//  BMWebServiceUrlGenerator.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/2/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//


struct BMWebServiceUrls
{
    static let kBMWebServiceBaseUrl = "http://thebuyermarket.com/buyer_market/index.php"
    struct BMWebServiceSellerUrls
    {
        static let kBMWebServiceSellerSignupUrl = "/seller/signup"
        static let kBMWebServiceSellerSignInUrl = "/seller/signin"
    }
    struct BMWebServiceBuyerUrls
    {
        static let kBMWebServiceBuyerSignupUrl = "/buyer_login/signup"
        static let kBMWebServiceBuyerSignInUrl = "/buyer_login/signin"
    }
    struct BMExteriorListUrls
    {
        static let kBMWebServiceExteriorListUrl = "/lists/details/exterior"
    }
    struct BMStylesListUrls
    {
        static let kBMWebServiceStylesListUrl = "/lists/details/styles"
    }
    struct BMPropertyTypeUrls
    {
        static let kBMWebServiceTypeListUrl = "/lists/details/property_type"
    }
    
    struct BMStateListUrls
    {
        static let kBMWebServiceStateListUrl = "/lists/states"
    }
    struct BMPropertyUrls
    {
        static let kBMWebServicePropertyListUrl = "/lists/details/property_type"
        static let kBMWebServicePropertyListByBuyeridUrl = "/properties/lists"
        static let kBMWebServiceDeletePropertyUrl = "/properties/deleteProperty"
        static let kBMWebServiceAddPropertyUrl = "/properties/add"
        static let kBMWebServiceSearchPropertyUrl = "/properties/search"
    }
    
}

class BMWebServiceUrlGenerator
{
    internal static func concatUrl(_ relativeUrl:String) ->String
    {
        return "\(BMWebServiceUrls.kBMWebServiceBaseUrl)"+"\(relativeUrl)"
    }
}
