//
//  ViewController.swift
//  DelegatesChallengeApp
//
//  Created by XcodeUser on 9/3/15.
//  Copyright (c) 2015 XcodeUser. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var zipcodeTextField: UITextField!
    
    @IBOutlet weak var cashTextField: UITextField!
    
    @IBOutlet weak var lockableTextField: UITextField!
    
    @IBOutlet weak var `switch`: UISwitch!
    
    let zipCode = zipcodeDelegate()
    let cashDel = cashDelegate()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //set delegates
        self.zipcodeTextField.delegate = zipCode
        self.cashTextField.delegate = cashDel
        self.lockableTextField.delegate = self
        
        self.`switch`.setOn(false, animated: false)
        
        self.lockableTextField.enabled = false
        
        
        
        
    }

    @IBAction func enableTextField(sender: AnyObject) {
        
        if( self.`switch`.on){
            lockableTextField.enabled = true
        }
        else {
            lockableTextField.enabled = false
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

