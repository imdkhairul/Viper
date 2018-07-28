//
//  BMWebServiceUrlGenerator+Buyer.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/3/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import Foundation

class BMWebServiceBuyerUrlGenerator:BMWebServiceUrlGenerator
{
    static func buyerSignUpUrl() -> String
    {
        return super.concatUrl(BMWebServiceUrls.BMWebServiceBuyerUrls.kBMWebServiceBuyerSignupUrl)
    }
    
    static func buyerSignInUrl() -> String
    {
        return super.concatUrl(BMWebServiceUrls.BMWebServiceBuyerUrls.kBMWebServiceBuyerSignInUrl)
    }
}
