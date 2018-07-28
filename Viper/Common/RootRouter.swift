//
//  RootRouter.swift
//  BuyerMarket
//
//  Created by Khairul Islam on 7/8/18.
//  Copyright © 2018 Khairul Islam. All rights reserved.
//

import UIKit

class RootRouter : NSObject {
    func setRootViewController(viewController: UIViewController, inWindow: UIWindow) {
        inWindow.rootViewController = UINavigationController.init(rootViewController: viewController)
    }
}
