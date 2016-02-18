//
//  ViewController.swift
//  HomeworkQuiz
//
//  Created by Nick on 2/16/16.
//  Copyright © 2016 Nick Metzger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var FirstTextField: UITextField!
    var correctCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        if (segue.identifier == "firstSegue") {
            if FirstTextField.text == "Dog" {
                correctCount++
            }

            var detailVC = segue!.destinationViewController as! SecondViewController;
            detailVC.toPass = correctCount
        }
    }
    

}

