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

class SellerSignedInViewController: UIViewController,SellerSignedInViewInterface,NVActivityIndicatorViewable {
    
    var handler:SellerSignInModuleInterface?
    
    var keyboardManager:BMKeyBoardManager?
    var activeTextField:UITextField?

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.keyboardManager = BMKeyBoardManager(withScrollView: self.scrollView)
        self.keyboardManager?.keyboardDataSource = self;
        self.title = "Seller SignIn"
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.keyboardManager?.beginObservingKeyboard();
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.keyboardManager?.endObservingKeyboard()
    }
    
    //MARK:IBActions
    
    @IBAction func signInButtonPressed(_ sender: Any)
    {
        handler?.signInSeller(email: emailTextField.text!, password: passwordTextField.text!)
    }
    
    @IBAction func signUpButtonPressed(_ sender: Any)
    {
        handler?.signUpSeller()
    }
    
    
    //MARK:BuyerSignedInViewInterface
    
    func showSignedInSuccessOrFailedMessage(message: String)
    {
        SVProgressHUD.showInfo(withStatus: message)
        stopAnimating()
        handler?.showHome()
    }
    
    func showPreProgressOfSignIn()
    {
        startAnimating()
    }
}

extension SellerSignedInViewController:ASKeyboardActiveFieldDataSource
{
    func activeField() -> UITextField {
        return self.activeTextField!
    }
}
extension SellerSignedInViewController:UITextFieldDelegate
{
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        self.activeTextField = textField
        return true
    }
}
