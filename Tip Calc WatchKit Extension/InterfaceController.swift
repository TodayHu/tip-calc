//
//  InterfaceController.swift
//  Tip Calc WatchKit Extension
//
//  Created by Adam Lea on 3/29/15.
//  Copyright (c) 2015 Lea Studios. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet weak var dollarLabel: WKInterfaceLabel!
    
    
    @IBAction func sliderChanged(value: Float) {
        var intValue = Int(value)
        self.dollarLabel.setText("$\(intValue)")
    }
    
    @IBAction func fifteenTapped() {
            self.pushControllerWithName("resultsController", context: nil)
    }
    
    @IBAction func eighteenTapped() {
            self.pushControllerWithName("resultsController", context: nil)
    }
    
    @IBAction func twentyTapped() {
            self.pushControllerWithName("resultsController", context: nil)
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
