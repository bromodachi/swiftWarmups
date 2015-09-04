//
//  cashDelegate.swift
//  DelegatesChallengeApp
//
//  Created by XcodeUser on 9/3/15.
//  Copyright (c) 2015 XcodeUser. All rights reserved.
//

import Foundation
import UIKit

class cashDelegate : NSObject, UITextFieldDelegate{
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        
        var oldText:NSString = textField.text
        var newText = oldText.stringByReplacingCharactersInRange(range, withString: string)
        
        var newString = String(newText)
        
        var notYet = newString.stringByReplacingOccurrencesOfString("$", withString: "")
        var finalString = notYet.stringByReplacingOccurrencesOfString(".", withString: "")
        if let  cashInt = finalString.toInt(){
            newText = "$" + getDollars(cashInt) + "." + getCents(cashInt)
            
        }
        else{
            newText = "$0.00"
        }
        textField.text = newText
        return false
    }
    
    func getDollars(cash:Int)->String{
        return String(cash/100)
    }
    
    
    func getCents(cash: Int)->String{
        let change = cash % 100
        var changeString = String(change)
        if(change<10){
            changeString = "0"+changeString
        }
        return changeString
        
    }
    
    
    func textFieldDidBeginEditing(textField: UITextField) {
        if textField.text.isEmpty {
            textField.text = "$0.00"
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }

}