//
//  BMCountryModelBuilder.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/18/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

class BMCountryModelBuilder: BMModelBuilder
{
    func getPropertyTypeModels() -> [BMCountryModel]?
    {
        if let sellerModelArray = super.getResponseData()
        {
            var propertyModelArray:[BMCountryModel] = []
            sellerModelArray.forEach({ (dictionary) in
                propertyModelArray.append(BMCountryModel.init(dictionary: dictionary))
            })
            return propertyModelArray
        }
        else
        {
            return nil
        }
    }
}
