//
//  UIButtonExt.swift
//  GoalPost
//
//  Created by iosdev on 28.3.2018.
//  Copyright © 2018 Group-6. All rights reserved.
//

import UIKit

extension UIButton {
    func setSelectedColor() {
        self.backgroundColor = #colorLiteral(red: 0.5905663653, green: 0.9282492375, blue: 0.5576908119, alpha: 1)
    }
    
    func setDeselectedColor() {
        self.backgroundColor = #colorLiteral(red: 0.6980392157, green: 0.8666666667, blue: 0.6862745098, alpha: 1)
    }
}
