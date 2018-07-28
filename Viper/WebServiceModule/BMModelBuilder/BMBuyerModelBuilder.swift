//
//  BMBuyerModelBuilder.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/4/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

class BMBuyerModelBuilder: BMModelBuilder
{
    func getbuyerModel() -> BMBuyerModel?
    {
        if let buyerModelDictionary = super.getResponseData()
        {
            return BMBuyerModel.init(dictionary: buyerModelDictionary.first!)
        }
        else
        {
            return nil
        }
    }
}
