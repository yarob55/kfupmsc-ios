//
//  Extensions.swift
//  KFUPMSC
//
//  Created by Ammar AlTahhan on 08/01/2018.
//  Copyright © 2018 Ammar AlTahhan. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationController {
    func pushViewController(_ withIdentifier: String) {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: withIdentifier)
        
        self.pushViewController(viewController, animated: false)
    }
}


