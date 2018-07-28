//
//  BMWebServiceCommunicatorForSeller.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/4/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit
import Alamofire

typealias SellerResponse = (_ responseModel:BMSellerModel?,_ status:Bool,_ message:String) -> Void

class BMWebServiceCommunicatorForSeller: BMWebServiceCommunicator
{
    class func sendSignInRequestForSeller(userid:String,password:String,completion:@escaping SellerResponse)
    {
        let parameters:Parameters = [
            "\(BMSellerModelDictionaryKeys.kEmail)":"\(userid)",
            "\(BMSellerModelDictionaryKeys.kPassword)":"\(password)"]
        
        super.sendPostRequest(BMWebServiceSellerUrlGenerator.sellerSignInUrl(), parameters) { (data) in
            let modelBuilder = BMSellerModelBuilder.init(jsondata: data)
            completion(modelBuilder.getSellerModel(),modelBuilder.getStatus(),modelBuilder.getResponseMessage())
        }
    }
    
    class func sendSignUpRequestForSeller(firstName:String,lastName:String,email:String,phone:String,userid:String,password:String,completion:@escaping SellerResponse)
    {
        let parameters:Parameters = [
            "\(BMSellerModelDictionaryKeys.kFirstName)":"\(firstName)",
            "\(BMSellerModelDictionaryKeys.kLastName)":"\(lastName)",
            "\(BMSellerModelDictionaryKeys.kEmail)":"\(email)",
            "\(BMSellerModelDictionaryKeys.kPhone)":"\(phone)",
            "\(BMSellerModelDictionaryKeys.kid)":"\(userid)",
            "\(BMSellerModelDictionaryKeys.kPassword)":"\(password)"]
        
        super.sendPostRequest(BMWebServiceSellerUrlGenerator.sellerSignUpUrl(), parameters) { (data) in
            let modelBuilder = BMSellerModelBuilder.init(jsondata: data)
            completion(modelBuilder.getSellerModel(),modelBuilder.getStatus(),modelBuilder.getResponseMessage())
        }
    }
}
