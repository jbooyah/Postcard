//
//  ViewController.swift
//  Postcard
//
//  Created by Jason Paul on 9/28/14.
//  Copyright (c) 2014 Jason Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!

    @IBOutlet weak var mailButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
    
        // Adding comment here to test commit
        
        messageLabel.hidden = false
        nameLabel.hidden = false
        
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        nameLabel.text = "Dear " + enterNameTextField.text
        nameLabel.text = nameLabel.text! + ","
        nameLabel.textColor = UIColor.blueColor()
        
        
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    
    }
}

