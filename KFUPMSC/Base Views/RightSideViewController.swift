//
//  RightSideViewController.swift
//  KFUPMSC
//
//  Created by Ammar AlTahhan on 08/01/2018.
//  Copyright © 2018 Ammar AlTahhan. All rights reserved.
//

import UIKit

class RightSideViewController: UIViewController {
    
    var mainTabbarController: UITabBarController!

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func btn(_ sender: UIButton) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.drawerContainer?.toggle(MMDrawerSide.right, animated: true, completion: nil)
        (mainTabbarController.selectedViewController as! UINavigationController).pushViewController("RightSideViewController")
    }

}
