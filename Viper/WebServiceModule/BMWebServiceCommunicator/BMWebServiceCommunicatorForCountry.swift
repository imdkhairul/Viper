//
//  BMWebServiceCommunicatorForCountry.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/18/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

typealias CountryResponse = (_ responseModels:[BMCountryModel]?,_ status:Bool,_ message:String) -> Void


class BMWebServiceCommunicatorForCountry: BMWebServiceCommunicator
{
    class func getCountryList(completion:@escaping CountryResponse)
    {
        super.sendGetRequest(BMWebServiceStatesUrlGenerator.stateListUrl()) { (data) in
            let modelBuilder = BMCountryModelBuilder(jsondata: data)
            completion(modelBuilder.getPropertyTypeModels(),modelBuilder.getStatus(),modelBuilder.getResponseMessage())
        }
    }
}
