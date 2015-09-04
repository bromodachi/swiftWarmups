//
//  zipcodeDelegate.swift
//  DelegatesChallengeApp
//
//  Created by XcodeUser on 9/3/15.
//  Copyright (c) 2015 XcodeUser. All rights reserved.
//

import Foundation
import UIKit

class zipcodeDelegate : NSObject, UITextFieldDelegate{
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        var zipString:NSString = textField.text
        zipString = zipString.stringByReplacingCharactersInRange(range, withString: string)
        
        return zipString.length <= 5
    }
}