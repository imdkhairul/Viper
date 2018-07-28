//
//  UIStoryboard+Addition.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/7/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

extension UIStoryboard
{
    class func buyerStoryboard() -> UIStoryboard
    {
        return UIStoryboard(name: "Buyer", bundle: nil)
    }
    class func sellerrStoryboard() -> UIStoryboard
    {
        return UIStoryboard(name: "Seller", bundle: nil)
    }
    class func homeStoryboard() -> UIStoryboard
    {
        return UIStoryboard(name: "Home", bundle: nil)
    }
    class func propertyStoryboard() -> UIStoryboard
    {
        return UIStoryboard(name: "Property", bundle: nil)
    }
}
