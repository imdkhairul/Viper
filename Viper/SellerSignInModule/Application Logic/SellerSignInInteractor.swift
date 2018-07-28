//
//  BuyerSignInInteractor.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/5/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

class SellerSignInInteractor: SellerSignInInteractorInput
{
    var output:SellerSignInInteractorOutput?
    
    func signInSeller(userid: String, password: String)
    {
        BMWebServiceCommunicatorForSeller.sendSignInRequestForSeller(userid: userid, password: password) { (sellerModel, success, message) in
            if success
            {
                self.output?.sellerSignedInSuccessfully(message: message)
                BMSellerInfoManager.sharedInstance.saveSellerInformation(userid: (sellerModel?.id)!, firstName: (sellerModel?.firstName)!, lastName: (sellerModel?.lastName)!, password: (sellerModel?.password)!,phoneNumber: (sellerModel?.phone)!, email: (sellerModel?.email)!)
            }
            else
            {
                self.output?.sellerSignedInFailed(message: message)
            }
        }
    }
}
