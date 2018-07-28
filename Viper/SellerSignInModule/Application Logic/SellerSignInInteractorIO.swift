//
//  BuyerSignInInteractorIO.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/5/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

protocol SellerSignInInteractorInput
{
    func signInSeller(userid:String,password:String)
}

protocol SellerSignInInteractorOutput
{
    func sellerSignedInSuccessfully(message:String)
    func sellerSignedInFailed(message:String)
}
