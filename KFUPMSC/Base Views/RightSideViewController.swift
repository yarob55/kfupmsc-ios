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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btn(_ sender: UIButton) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.drawerContainer?.toggle(MMDrawerSide.right, animated: true, completion: nil)
        (mainTabbarController.selectedViewController as! UINavigationController).pushViewController("RightSideViewController")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
