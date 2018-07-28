//
//  BuyerSignedInViewController.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/5/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit
import SVProgressHUD
import NVActivityIndicatorView

enum PreviewMode
{
    case signup
    case update
}

class SellerSignedUpViewController: UITableViewController,SellerSignedUpViewInterface,NVActivityIndicatorViewable {
    
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var previewMode:PreviewMode = .signup
    
    var handler:SellerSignUpModuleInterface?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if previewMode == .update
        {
            handler?.showExistingSellerInformation()
            self.title = "Seller Info Update"
        }
        else
        {
            self.title = "Seller SignUp"
        }
    }
    // MARK: IBActions
    
    @IBAction func signUpButtonPressed(_ sender: Any)
    {
        if previewMode == .update
        {
            handler?.updateSellerInformation(firstName: firstNameTextField.text!, lastName: lastNameTextField.text!, email: emailTextField.text!, phone: phoneTextField.text!, password: passwordTextField.text!)
        }
        else
        {
            handler?.signUpSeller(firstName: firstNameTextField.text!, lastName: lastNameTextField.text!, email: emailTextField.text!, phone: phoneTextField.text!, password: passwordTextField.text!)
        }
        
    }
    
    func updateSellerInfoFields(firstName:String,lastName:String,password:String,phoneNumber:String,email:String)
    {
        firstNameTextField.text = firstName
        lastNameTextField.text = lastName
        emailTextField.text = email
        phoneTextField.text = phoneNumber
        passwordTextField.text = password
        
    }
    //MARK:BuyerSignedInViewInterface
    
    func upadteSellerInformation(firstName:String,lastName:String,password:String,phoneNumber:String,email:String)
    {
        updateSellerInfoFields(firstName: firstName, lastName: lastName, password: password, phoneNumber: phoneNumber, email: email)
    }
    
    func showSignedUpSuccessOrFailedMessage(message: String)
    {
        stopAnimating()
        SVProgressHUD.showInfo(withStatus: message)
        handler?.showHome()
    }
    
    func showPreProgressOfSignUp()
    {
        startAnimating()
    }
}
