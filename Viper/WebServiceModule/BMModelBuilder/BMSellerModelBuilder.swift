//
//  BMSellerModelBuilder.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/5/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

class BMSellerModelBuilder: BMModelBuilder
{
    func getSellerModel() -> BMSellerModel?
    {
        if let sellerModelArray = super.getResponseData()
        {
            return BMSellerModel.init(dictionary: sellerModelArray.first!)
        }
        else
        {
            return nil
        }
    }
}
