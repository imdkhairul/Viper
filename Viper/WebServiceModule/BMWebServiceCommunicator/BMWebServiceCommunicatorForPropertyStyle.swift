//
//  BMWebServiceCommunicatorForPropertyStyle.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/18/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

typealias PropertyStyleResponse = (_ responseModels:[BMPropertyStyleModel]?,_ status:Bool,_ message:String) -> Void

class BMWebServiceCommunicatorForPropertyStyle: BMWebServiceCommunicator
{
    class func getExteriorList(completion:@escaping PropertyStyleResponse)
    {
        super.sendGetRequest(BMWebServiceStylesUrlGenerator.stylesListUrl()) { (data) in
            let modelBuilder = BMPropertyStyleModelBuilder(jsondata: data)
            completion(modelBuilder.getPropertyStyleModels(),modelBuilder.getStatus(),modelBuilder.getResponseMessage())
        }
    }
}
