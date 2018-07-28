//
//  BuyerSignInInteractorIO.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/5/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

protocol SellerSignUpInteractorInput
{
    func signUpSeller(firstName: String, lastName: String, email:String , phone:String,password:String)
    func updateSellerInformation(firstName: String, lastName: String, email:String , phone:String,password:String)
    func getSellerInformation()
}

protocol SellerSignUpInteractorOutput
{
    func sellerSignedUpSuccessfully(message:String)
    func sellerSignedUpFailed(message:String)
    func gotSellerInformation(firstName:String,lastName:String,password:String,phoneNumber:String,email:String)
}
