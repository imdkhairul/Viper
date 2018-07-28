//
//  BuyerSignedInPresenter.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/5/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

class SellerSignedUpPresenter: SellerSignUpModuleInterface,SellerSignUpInteractorOutput {
    
    var sellerSignedUpInteractor:SellerSignUpInteractorInput?
    var viewInterface:SellerSignedUpViewInterface?
    var sellerSignUpRouter:SellerSignUpRouter?
    
    // MARK:BuyerSignInModuleInterface
    func signUpSeller(firstName: String, lastName: String, email: String, phone: String, password: String)
    {
        viewInterface?.showPreProgressOfSignUp()
        sellerSignedUpInteractor?.signUpSeller(firstName: firstName, lastName: lastName, email: email, phone: phone, password: password)
    }
    
    func updateSellerInformation(firstName: String, lastName: String, email:String , phone:String,password:String)
    {
        viewInterface?.showPreProgressOfSignUp()
        sellerSignedUpInteractor?.updateSellerInformation(firstName: firstName, lastName: lastName, email: email, phone: phone, password: password)
    }
    
    func showExistingSellerInformation()
    {
        sellerSignedUpInteractor?.getSellerInformation()
    }
    
    func showHome()
    {
        sellerSignUpRouter?.dismissSignUpController()
    }
    // MARK:BuyerSignInInteractorOutput
    
    func gotSellerInformation(firstName:String,lastName:String,password:String,phoneNumber:String,email:String)
    {
        viewInterface?.upadteSellerInformation(firstName: firstName, lastName: lastName, password: password, phoneNumber: phoneNumber, email: email)
    }
    
    func sellerSignedUpSuccessfully(message: String)
    {
        viewInterface?.showSignedUpSuccessOrFailedMessage(message: message)
    }
    
    func sellerSignedUpFailed(message: String)
    {
        viewInterface?.showSignedUpSuccessOrFailedMessage(message: message)
    }

}
