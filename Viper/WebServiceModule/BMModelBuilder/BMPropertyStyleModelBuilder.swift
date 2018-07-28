//
//  BMPropertyStyleModelBuilder.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/18/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

class BMPropertyStyleModelBuilder: BMModelBuilder {

    func getPropertyStyleModels() -> [BMPropertyStyleModel]?
    {
        if let sellerModelArray = super.getResponseData()
        {
            var propertyModelArray:[BMPropertyStyleModel] = []
            sellerModelArray.forEach({ (dictionary) in
                propertyModelArray.append(BMPropertyStyleModel.init(dictionary: dictionary))
            })
            return propertyModelArray
        }
        else
        {
            return nil
        }
    }
}
