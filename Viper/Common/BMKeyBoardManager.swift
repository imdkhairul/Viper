//
//  ASKeyBoardManager.swift
//  Above Sound
//
//  Created by Khairul Islam on 11/19/17.
//  Copyright © 2017 Khairul Islam. All rights reserved.
//

import UIKit
import Foundation

let activeFieldOffset:CGFloat = 10.0

protocol ASKeyboardActiveFieldDataSource {
    func activeField() -> UITextField;
}

class BMKeyBoardManager: NSObject {
    fileprivate var scrollView:UIScrollView
    fileprivate var tapGesture:UITapGestureRecognizer?
    var keyboardDataSource:ASKeyboardActiveFieldDataSource?
    
    init(withScrollView scrollView:UIScrollView) {
        self.scrollView = scrollView
    }
    
    func beginObservingKeyboard() -> () {
        NotificationCenter.default.addObserver(self, selector:#selector(BMKeyBoardManager.keyboardWillShow(notification:)) , name:NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector:#selector(BMKeyBoardManager.keyboardDidHide(notification:)) , name:NSNotification.Name.UIKeyboardDidHide, object: nil)
        NotificationCenter.default.addObserver(self, selector:#selector(BMKeyBoardManager.keyboardWillChangeFrame(notification:)) , name:NSNotification.Name.UIKeyboardWillChangeFrame, object: nil)
    }
    
    func endObservingKeyboard() -> () {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardDidHide, object: nil)
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardWillChangeFrame, object: nil)
    }
    
    @objc fileprivate func keyboardWillShow(notification:Notification){
        self.addGesture()
        let keyboardRect = (notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        let contentInsets = UIEdgeInsetsMake(self.scrollView.contentInset.top, 0.0, keyboardRect.height + activeFieldOffset, 0.0)
        UIView.animate(withDuration: 0.2) {
            self.scrollView.contentInset = contentInsets
            self.scrollView.scrollIndicatorInsets = contentInsets
        }
        
    }
    @objc fileprivate func keyboardDidHide(notification:Notification){
        self.removeGesture()
        let contentInsets = UIEdgeInsetsMake(self.scrollView.contentInset.top, 0.0, 0.0, 0.0)
        UIView.animate(withDuration: 0.2) {
            self.scrollView.contentInset = contentInsets
            self.scrollView.scrollIndicatorInsets = contentInsets
        }
    }
    @objc fileprivate func keyboardWillChangeFrame(notification:Notification){
        
    }
    @objc fileprivate func handleTap(gesture:UIGestureRecognizer) -> (){
        self.keyboardDataSource?.activeField().resignFirstResponder()
    }
    
    fileprivate func addGesture() -> (){
        if self.tapGesture == nil {
            self.tapGesture = UITapGestureRecognizer(target: self, action: #selector(BMKeyBoardManager.handleTap(gesture:)))
            self.scrollView.addGestureRecognizer(self.tapGesture!)
        }
    }
    
    fileprivate func removeGesture() -> (){
        if self.tapGesture != nil {
            self.scrollView.removeGestureRecognizer(self.tapGesture!)
            self.tapGesture = nil
        }
    }
}
