//
//  SellerSignInRouter.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/16/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

class SellerSignInRouter: NSObject
{
    var sellerSignInpresenter:SellerSignedInPresenter?
    var signInController:SellerSignedInViewController?
    var signUpRouter:SellerSignUpRouter?
    var rootRouter:RootRouter = RootRouter()
    
    func signInViewController() -> SellerSignedInViewController
    {
        signInController = UIStoryboard.sellerrStoryboard().instantiateViewController(withIdentifier:"SellerSignedInViewControllerID") as! SellerSignedInViewController
        signInController?.handler = sellerSignInpresenter
        sellerSignInpresenter?.viewInterface = signInController
        return signInController!
    }
    
    func setControllerForWindow(window:UIWindow)
    {
        rootRouter.setRootViewController(viewController: signInViewController(), inWindow: window)
    }
    
    func showSignInViewControllerFromController(controller:UIViewController)
    {
        signInController = signInViewController()
        if controller is UINavigationController
        {
            (controller as! UINavigationController).pushViewController(signInController!, animated: true)
        }
        else
        {
            controller.navigationController?.pushViewController(controller, animated: true)
        }
        
    }
    
    func disMissSignIncontroller()
    {
        signInController?.navigationController?.popToRootViewController(animated: true)
    }
    
    func showSignUpController()
    {
        signUpRouter?.showSignUpViewControllerFromController(controller: signInController!)
    }
}
