//
//  BMWebServiceCommunicatorForPropertyType.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/18/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

typealias PropertyTypeResponse = (_ responseModels:[BMPropertyTypeModel]?,_ status:Bool,_ message:String) -> Void

class BMWebServiceCommunicatorForPropertyType: BMWebServiceCommunicator
{
    class func getExteriorList(completion:@escaping PropertyTypeResponse)
    {
        super.sendGetRequest(BMWebServicePropertyTypeUrlGenerator.getPropertyTypeUrl()) { (data) in
            let modelBuilder = BMPropertyTypeModelBuilder(jsondata: data)
            completion(modelBuilder.getPropertyTypeModels(),modelBuilder.getStatus(),modelBuilder.getResponseMessage())
        }
    }
}
