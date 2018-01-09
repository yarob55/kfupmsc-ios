//
//  BaseViewController.swift
//  KFUPMSC
//
//  Created by Ammar AlTahhan on 09/01/2018.
//  Copyright © 2018 Ammar AlTahhan. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let menuBarBtnItem = UIBarButtonItem(image: #imageLiteral(resourceName: "second"), style: .plain, target: self, action: #selector(toggleSMenu))
        self.navigationItem.rightBarButtonItem = menuBarBtnItem
    }
    
    @objc func toggleSMenu() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.drawerContainer?.toggle(MMDrawerSide.right, animated: true, completion: nil)
    }

}
