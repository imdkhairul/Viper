//
//  BMExteriorModelBuilder.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/18/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

class BMExteriorModelBuilder: BMModelBuilder {
    
    func getExteriorModels() -> [BMExteriorModel]?
    {
        if let sellerModelArray = super.getResponseData()
        {
            var propertyModelArray:[BMExteriorModel] = []
            sellerModelArray.forEach({ (dictionary) in
                propertyModelArray.append(BMExteriorModel.init(dictionary: dictionary))
            })
            return propertyModelArray
        }
        else
        {
            return nil
        }
    }
}
