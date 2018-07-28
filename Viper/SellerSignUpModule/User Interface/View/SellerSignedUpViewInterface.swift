//
//  BuyerSignedInViewInterFace.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/5/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

protocol SellerSignedUpViewInterface
{
    func upadteSellerInformation(firstName:String,lastName:String,password:String,phoneNumber:String,email:String)
    func showSignedUpSuccessOrFailedMessage(message:String)
    func showPreProgressOfSignUp()
}
