//
//  BMWebServiceUrlGenerator+Seller.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/3/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import Foundation

class BMWebServiceSellerUrlGenerator:BMWebServiceUrlGenerator
{
    static func sellerSignUpUrl() -> String
    {
        return super.concatUrl(BMWebServiceUrls.BMWebServiceSellerUrls.kBMWebServiceSellerSignupUrl)
    }
    
    static func sellerSignInUrl() -> String
    {
        return super.concatUrl(BMWebServiceUrls.BMWebServiceSellerUrls.kBMWebServiceSellerSignInUrl)
    }
}
