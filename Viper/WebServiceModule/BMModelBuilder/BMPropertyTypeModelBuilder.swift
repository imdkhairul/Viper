//
//  BMPropertyTypeModelBuilder.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/18/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

class BMPropertyTypeModelBuilder: BMModelBuilder
{
    func getPropertyTypeModels() -> [BMPropertyTypeModel]?
    {
        if let sellerModelArray = super.getResponseData()
        {
            var propertyModelArray:[BMPropertyTypeModel] = []
            sellerModelArray.forEach({ (dictionary) in
                propertyModelArray.append(BMPropertyTypeModel.init(dictionary: dictionary))
            })
            return propertyModelArray
        }
        else
        {
            return nil
        }
    }
}
