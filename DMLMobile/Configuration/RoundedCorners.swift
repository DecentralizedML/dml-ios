//
//  RoundedCorners.swift
//  DMLMobile
//
//  Created by Aaron Cruz on 16/11/2018.
//  Copyright © 2018 Square Bracket eU. All rights reserved.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
}
