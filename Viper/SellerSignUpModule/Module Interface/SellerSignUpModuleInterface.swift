//
//  BuyerSignInInterface.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/5/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

protocol SellerSignUpModuleInterface
{
    func showExistingSellerInformation()
    func signUpSeller(firstName: String, lastName: String, email:String , phone:String,password:String)
    func updateSellerInformation(firstName: String, lastName: String, email:String , phone:String,password:String)
    func showHome()
}
