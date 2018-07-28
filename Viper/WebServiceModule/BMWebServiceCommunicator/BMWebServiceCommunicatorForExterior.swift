//
//  BMWebServiceCommunicatorForExterior.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/18/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

typealias ExteriorResponse = (_ responseModels:[BMExteriorModel]?,_ status:Bool,_ message:String) -> Void


class BMWebServiceCommunicatorForExterior: BMWebServiceCommunicator
{
    class func getExteriorList(completion:@escaping ExteriorResponse)
    {
        super.sendGetRequest(BMWebServiceExteriorUrlGenerator.exteriorListUrl()) { (data) in
            let modelBuilder = BMExteriorModelBuilder(jsondata: data)
            completion(modelBuilder.getExteriorModels(),modelBuilder.getStatus(),modelBuilder.getResponseMessage())
        }
    }
}
