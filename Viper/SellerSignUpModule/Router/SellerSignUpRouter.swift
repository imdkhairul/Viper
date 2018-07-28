//
//  BMSignUpRouter.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/16/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

class SellerSignUpRouter
{
    var sellerSignUppresenter:SellerSignedUpPresenter?
    var signUpController:SellerSignedUpViewController?
    
    func signUpViewController() -> SellerSignedUpViewController
    {
        let controller = UIStoryboard.sellerrStoryboard().instantiateViewController(withIdentifier:"SellerSignedUpViewControllerID") as! SellerSignedUpViewController
        controller.handler = sellerSignUppresenter
        sellerSignUppresenter?.viewInterface = controller
        return controller
    }
    
    func showSignUpViewControllerFromController(controller:UIViewController)
    {
        signUpController = signUpViewController()
        controller.navigationController?.pushViewController(signUpController!, animated: true)
    }
    
    func showSignUpViewControllerFromControllerForUpdate(controller:UIViewController)
    {
        signUpController = signUpViewController()
        signUpController?.previewMode = .update
        (controller as! UINavigationController).pushViewController(signUpController!, animated: true)
    }
    
    func dismissSignUpController()
    {
        signUpController?.navigationController?.popToRootViewController(animated: true)
    }
    
}
