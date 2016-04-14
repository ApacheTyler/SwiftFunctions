//
//  ViewController.swift
//  SwiftFunctinos
//
//  Created by Tyler Freeman on 4/13/16.
//  Copyright (c) 2016 Tyler Freeman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var hasShadow : Bool = false
    var hasSetColor : Bool = false
    var hasSetFontSize : Bool = false
    var hasSetShadow : Bool = false
    var hasAlignedLeft : Bool = false
    var hasAlignedRight : Bool = false
    var hasAlignedCenter : Bool = false
    var defaultText : String = "Set Me!"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SetColorButton(sender: AnyObject) {
        if (self.hasShadow) {
            // reset to defaults
        } else {
            OutputLabel.textColor = UIColor.redColor()
        }
        
    }
    
    @IBAction func SetFontSizeButton(sender: AnyObject) {
        if (self.hasSetFontSize) {
            // reset to default
        } else {
            OutputLabel.font = UIFont(name: OutputLabel.font.fontName, size: 32)
        }
    }
    
    @IBAction func SetShadowButton(sender: AnyObject) {
        if (self.hasSetShadow) {
            // reset to defaults
        } else {
            OutputLabel.layer.shadowColor = UIColor.blueColor().CGColor
            OutputLabel.layer.shadowOffset = CGSize(width: 3, height: 3)
            OutputLabel.layer.shadowOpacity = 0.7
            OutputLabel.layer.shadowRadius = 2
        }
    }
    
    @IBAction func AlignLeftButton(sender: AnyObject) {
        if (self.hasAlignedLeft) {
            // reset to defaults
            // set all other alignment vars to false
        } else {
            OutputLabel.textAlignment = NSTextAlignment.Left
        }
    }
    
    @IBAction func AlightRightButton(sender: AnyObject) {
        if (self.hasAlignedRight) {
            // reset to defaults
            // set all other alignment vars to false
        } else {
            OutputLabel.textAlignment = NSTextAlignment.Right
        }
    }
    
    @IBAction func AlignCenterButton(sender: AnyObject) {
        if (self.hasAlignedCenter) {
            // reset to defaults
            //set all other alignment vars to false
        } else {
            OutputLabel.textAlignment = NSTextAlignment.Center
        }
    }
    
    @IBAction func SetTextButton(sender: AnyObject) {
        let inputFieldText : String = InputField.text
        let inputFieldIsEmpty : Bool = (inputFieldText == "")
        if (inputFieldIsEmpty) {
           OutputLabel.text = self.defaultText
        } else {
            OutputLabel.text = InputField.text
        }
        self.view.endEditing(true)
    }
    
    @IBAction func InputFieldDidEndOnExit(sender: AnyObject) {
        OutputLabel.text = InputField.text
        self.resignFirstResponder() // Is this better than self.view.endEditing(true)?
    }
    
    @IBOutlet weak var InputField: UITextField!
    @IBOutlet weak var OutputLabel: UILabel!

}

