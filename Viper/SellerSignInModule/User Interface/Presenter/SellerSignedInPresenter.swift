//
//  BuyerSignedInPresenter.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/5/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

class SellerSignedInPresenter: SellerSignInModuleInterface,SellerSignInInteractorOutput {
    
    
    var sellerSignedInInteractor:SellerSignInInteractorInput?
    var viewInterface:SellerSignedInViewInterface?
    var sellerSignInRouter:SellerSignInRouter?
    // MARK:BuyerSignInModuleInterface
    
    func signInSeller(email: String, password: String)
    {
        viewInterface?.showPreProgressOfSignIn()
        sellerSignedInInteractor?.signInSeller(userid: email, password: password)
    }
    
    func signUpSeller()
    {
        sellerSignInRouter?.showSignUpController()
    }
    
    func showHome()
    {
        sellerSignInRouter?.disMissSignIncontroller()
    }
    
    // MARK:BuyerSignInInteractorOutput
    
    func sellerSignedInSuccessfully(message: String)
    {
        viewInterface?.showSignedInSuccessOrFailedMessage(message: message)
    }
    
    func sellerSignedInFailed(message: String)
    {
        viewInterface?.showSignedInSuccessOrFailedMessage(message: message)
    }

}
