//
//  BMAppDependencies.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/11/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

class BMAppDependencies
{
    let sellerSignInrouter = SellerSignInRouter()
    
    init()
    {
        setUpAppdependencies()
    }
    
    func installRootViewControllerIntoWindow(window: UIWindow)
    {
        sellerSignInrouter.setControllerForWindow(window: window)
    }
    
    func setUpAppdependencies()
    {
        // Seller SignUP Router
        let sellerSignUpRouter = SellerSignUpRouter()
        let sellerSignUpPresenter = SellerSignedUpPresenter()
        let sellerSignUpInteractor = SellerSignUpInteractor()
        sellerSignUpInteractor.output = sellerSignUpPresenter
        sellerSignUpPresenter.sellerSignedUpInteractor = sellerSignUpInteractor
        sellerSignUpPresenter.sellerSignUpRouter = sellerSignUpRouter
        sellerSignUpRouter.sellerSignUppresenter = sellerSignUpPresenter
        
        //Seller SignIn Router
        
        let sellerSignInPresenter = SellerSignedInPresenter()
        let sellerSignInInteractor = SellerSignInInteractor()
        sellerSignInInteractor.output = sellerSignInPresenter
        sellerSignInPresenter.sellerSignedInInteractor = sellerSignInInteractor
        sellerSignInPresenter.sellerSignInRouter = sellerSignInrouter
        sellerSignInrouter.sellerSignInpresenter = sellerSignInPresenter
        sellerSignInrouter.signUpRouter = sellerSignUpRouter
        
    }
}
