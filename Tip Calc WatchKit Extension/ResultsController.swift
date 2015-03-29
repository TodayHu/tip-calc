//
//  ResultsController.swift
//  Tip Calc
//
//  Created by Adam Lea on 3/29/15.
//  Copyright (c) 2015 Lea Studios. All rights reserved.
//

import WatchKit
import Foundation


class ResultsController: WKInterfaceController {

    @IBOutlet weak var tipLabel: WKInterfaceLabel!
    
    @IBOutlet weak var costOfMealLabel: WKInterfaceLabel!
    
    @IBOutlet weak var tipDollarAmountLable: WKInterfaceLabel!
    
    @IBOutlet weak var totalCostOfMealLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        var tipDictionary = context as [String:Int]
        
        var tipPercentage = tipDictionary["tipPercent"]!
        
        var costOfMeal = tipDictionary["costOfMeal"]!
        
        var tipDollarAmount = Float(costOfMeal) * Float(tipPercentage) * 0.01
        
        var totalMealCost = tipDollarAmount + Float(costOfMeal)
        
        self.tipLabel.setText("\(tipPercentage)% Tip:")
        self.costOfMealLabel.setText("$\(costOfMeal)")
        self.tipDollarAmountLable.setText("$\(tipDollarAmount)")
        self.totalCostOfMealLabel.setText("$\(totalMealCost)")
        
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
