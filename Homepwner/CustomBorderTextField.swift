//
//  CustomBorderTextField.swift
//  Homepwner
//
//  Created by Stephen Atwood on 3/17/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import UIKit

class CustomBorderTextField : UITextField {
    
    var originalBorder: UITextBorderStyle = .RoundedRect
    
    override func becomeFirstResponder() -> Bool {
        originalBorder = borderStyle
        borderStyle = .Bezel
        return super.becomeFirstResponder()
    }
    
    override func resignFirstResponder() -> Bool {
        borderStyle = originalBorder
        return super.resignFirstResponder()
    }
}
