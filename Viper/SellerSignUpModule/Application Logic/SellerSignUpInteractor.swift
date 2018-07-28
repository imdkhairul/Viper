//
//  BuyerSignInInteractor.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/5/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

class SellerSignUpInteractor: SellerSignUpInteractorInput
{
    var output:SellerSignUpInteractorOutput?
    
    func signUpSeller(firstName: String, lastName: String, email:String , phone:String,password:String)
    {
//        {"first_name":"test","last_name":"test","email": "niloy@gmail.com","phone":"1234568","password":"123456", "id": 0, "signup_day": "1"}
        BMWebServiceCommunicatorForSeller.sendSignUpRequestForSeller(firstName: firstName, lastName: lastName, email: email, phone: phone, userid:"0", password: password) { (sellerModel,success, message) in
            if success
            {
                BMSellerInfoManager.sharedInstance.saveSellerInformation(userid: (sellerModel?.id)!, firstName: (sellerModel?.firstName)!, lastName: (sellerModel?.lastName)!, password: (sellerModel?.password)!,phoneNumber: (sellerModel?.phone)!, email: (sellerModel?.email)!)
                self.output?.sellerSignedUpSuccessfully(message: message)
            }
            else
            {
                self.output?.sellerSignedUpFailed(message: message)
            }
        }
    }
    
    func updateSellerInformation(firstName: String, lastName: String, email:String , phone:String,password:String)
    {
        //        {"first_name":"test","last_name":"test","email": "niloy@gmail.com","phone":"1234568","password":"123456", "id": 0, "signup_day": "1"}
        BMWebServiceCommunicatorForSeller.sendSignUpRequestForSeller(firstName: firstName, lastName: lastName, email: email, phone: phone, userid:"0", password: password) { (sellerModel,success, message) in
            if success
            {
                BMSellerInfoManager.sharedInstance.saveSellerInformation(userid: (sellerModel?.id)!, firstName: (sellerModel?.firstName)!, lastName: (sellerModel?.lastName)!, password: (sellerModel?.password)!,phoneNumber: (sellerModel?.phone)!, email: (sellerModel?.email)!)
                self.output?.sellerSignedUpSuccessfully(message: message)
            }
            else
            {
                self.output?.sellerSignedUpFailed(message: message)
            }
        }
    }
    
    
    func getSellerInformation()
    {
        let sellerInformation = BMSellerInfoManager.sharedInstance.sellerInformation()
        output?.gotSellerInformation(firstName: sellerInformation.firstName, lastName: sellerInformation.lastName, password: sellerInformation.password, phoneNumber: sellerInformation.phone, email: sellerInformation.email)
    }
    
    
}
