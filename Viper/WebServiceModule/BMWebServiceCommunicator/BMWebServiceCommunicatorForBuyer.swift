//
//  BMWebServiceCommunicatorForBuyer.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/4/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit
import Alamofire

typealias BuyerResponse = (_ responseModel:BMBuyerModel?,_ status:Bool,_ message:String) -> Void

class BMWebServiceCommunicatorForBuyer: BMWebServiceCommunicator
{
    class func sendSignInRequestForBuyer(userid:String,password:String,completion:@escaping BuyerResponse)
    {
        let parameters:Parameters = [
            "\(BMBuyerModelDictionaryKeys.kEmail)":"\(userid)",
            "\(BMBuyerModelDictionaryKeys.kPassword)":"\(password)"]
        
        super.sendPostRequest(BMWebServiceBuyerUrlGenerator.buyerSignInUrl(), parameters) { (data) in
            let modelBuilder = BMBuyerModelBuilder.init(jsondata: data)
            completion(modelBuilder.getbuyerModel(),modelBuilder.getStatus(),modelBuilder.getResponseMessage())
        }
    }
    
    class func sendSignUpRequestForBuyer(firstName:String,lastName:String,email:String,phone:String,userid:String,password:String,completion:@escaping BuyerResponse)
    {
        let parameters:Parameters = [
            "\(BMBuyerModelDictionaryKeys.kFirstName)":"\(firstName)",
            "\(BMBuyerModelDictionaryKeys.kLastName)":"\(lastName)",
            "\(BMBuyerModelDictionaryKeys.kEmail)":"\(email)",
            "\(BMBuyerModelDictionaryKeys.kPhone)":"\(phone)",
            "\(BMBuyerModelDictionaryKeys.kid)":"\(userid)",
            "\(BMBuyerModelDictionaryKeys.kPassword)":"\(password)"]
        
        super.sendPostRequest(BMWebServiceBuyerUrlGenerator.buyerSignUpUrl(), parameters) { (data) in
            let modelBuilder = BMBuyerModelBuilder.init(jsondata: data)
            completion(modelBuilder.getbuyerModel(),modelBuilder.getStatus(),modelBuilder.getResponseMessage())
        }
    }
}
