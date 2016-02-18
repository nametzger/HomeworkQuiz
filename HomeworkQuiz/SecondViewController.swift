//
//  SecondViewController.swift
//  HomeworkQuiz
//
//  Created by Nick on 2/17/16.
//  Copyright © 2016 Nick Metzger. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController : UIViewController {
    
    
    @IBOutlet var SecondTextField: UITextField!
    var toPass: Int!
    
    override func viewDidLoad() {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        
        var correctCount = toPass
        if (segue.identifier == "secondSegue") {
            if SecondTextField.text == "3" {
                correctCount = correctCount + 1
            }
            
            var detailVC = segue!.destinationViewController as! ThirdViewController;
            detailVC.toPass = correctCount
        }
    }

    
}
