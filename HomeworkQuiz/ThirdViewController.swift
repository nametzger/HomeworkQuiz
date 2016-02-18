//
//  ThirdViewController.swift
//  HomeworkQuiz
//
//  Created by Nick on 2/17/16.
//  Copyright © 2016 Nick Metzger. All rights reserved.
//

import Foundation
import UIKit

class ThirdViewController : UIViewController {
    
    @IBOutlet var FinalResults: UILabel!
    var toPass : Int!
    
    override func viewDidLoad() {
        FinalResults.text = "You got 2/" + String(toPass) + " answers correct!"
    }
}
