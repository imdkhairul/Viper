//
//  BMWebServiceCommunicatorForProperty.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/18/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit
import Alamofire

typealias PropertyResponse = (_ responseModels:[BMPropertyModel]?,_ status:Bool,_ message:String) -> Void

class BMWebServiceCommunicatorForProperty: BMWebServiceCommunicator
{
    class func addProperty(userid:String,firstName:String,lastName:String,email:String,phone:String,contact:String,purchastType:String,prcapproved:String,creditScore:String,maxprice:String,propertyType:String,buyerid:String,countryid:String,city:String,state:String,zipcode:String,bedroom:String,basement:String,garage:String,style:String,exterior:String,pricemin:String,pricemax:String,bathroom:String,completion:@escaping PropertyResponse)
    {
        
       let parameters:Parameters = [
        BMPropertyModelDictionaryKeys.kid: userid,
        BMPropertyModelDictionaryKeys.kFirstName: firstName,
        BMPropertyModelDictionaryKeys.kLastName: lastName,
        BMPropertyModelDictionaryKeys.kEmail: email,
        BMPropertyModelDictionaryKeys.kPhone : phone,
        BMPropertyModelDictionaryKeys.kcontact: contact,
        BMPropertyModelDictionaryKeys.kpurchase_type : purchastType,
        BMPropertyModelDictionaryKeys.kprc_approved : prcapproved,
        BMPropertyModelDictionaryKeys.kcredit_score : creditScore,
        BMPropertyModelDictionaryKeys.kmax_price : maxprice,
        BMPropertyModelDictionaryKeys.kproperty_type : propertyType,
        BMPropertyModelDictionaryKeys.kbuyer_id : buyerid,
        BMPropertyModelDictionaryKeys.kcountry : countryid,
        BMPropertyModelDictionaryKeys.kcity : city,
        BMPropertyModelDictionaryKeys.kstate : state,
        BMPropertyModelDictionaryKeys.kzipcode : zipcode,
        BMPropertyModelDictionaryKeys.kbedroom : bedroom,
        BMPropertyModelDictionaryKeys.kbasement : basement,
        BMPropertyModelDictionaryKeys.kgarage : garage,
        BMPropertyModelDictionaryKeys.kstyle : style,
        BMPropertyModelDictionaryKeys.kexterior : exterior,
        BMPropertyModelDictionaryKeys.kprice_min : pricemin,
        BMPropertyModelDictionaryKeys.kprice_max : pricemax,
        BMPropertyModelDictionaryKeys.kbathroom : bathroom
        ]
        
        super.sendPostRequest(BMWebServicePropertyUrlGenerator.addpropertyUrl(), parameters) { (data) in
            let modelBuilder = BMPropertyModelBuilder.init(jsondata: data)
            completion(modelBuilder.getProductModels(),modelBuilder.getStatus(),modelBuilder.getResponseMessage())
        }
    }
    
    class func getPropertyList(buyerid:String,completion:@escaping PropertyResponse)
    {
        super.sendGetRequest(BMWebServicePropertyUrlGenerator.propertyListByBuyerIDUrl()+"/"+buyerid) { (data) in
            let modelBuilder = BMPropertyModelBuilder.init(jsondata: data)
            completion(modelBuilder.getProductModels(),modelBuilder.getStatus(),modelBuilder.getResponseMessage())
        }
    }
}
