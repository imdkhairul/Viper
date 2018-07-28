//
//  BMProductModelBuilder.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/18/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

class BMPropertyModelBuilder: BMModelBuilder
{
    func getProductModels() -> [BMPropertyModel]?
    {
        if let sellerModelArray = super.getResponseData()
        {
            var propertyModelArray:[BMPropertyModel] = []
            sellerModelArray.forEach({ (dictionary) in
                propertyModelArray.append(BMPropertyModel.init(dictionary: dictionary))
            })
            return propertyModelArray
        }
        else
        {
            return nil
        }
    }
}
