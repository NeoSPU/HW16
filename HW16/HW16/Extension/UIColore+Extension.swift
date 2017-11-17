//
//  UIColore+Extension.swift
//  HW16
//
//  Created by Alex Neo on 11/17/17.
//  Copyright © 2017 Alex Neo. All rights reserved.
//

import UIKit

extension UIColor {
    static var random: UIColor {
        let rgbArray = Helpers.generateRandomArray(quantity: 3, maxBound: 256)
        let randomColor = UIColor(red: rgbArray[0] / 255.0,
                                  green: rgbArray[1] / 255.0,
                                  blue: rgbArray[2] / 255.0, alpha: 1.0)
        return randomColor
    }
}
