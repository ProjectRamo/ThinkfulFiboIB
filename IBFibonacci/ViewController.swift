//
//  ViewController.swift
//  IBFibonacci
//
//  Created by Omar Haneef on 8/29/14.
//  Copyright (c) 2014 Omar Haneef. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var theSlider: UISlider!
    @IBOutlet weak var selectedValueLabel: UILabel!
    @IBOutlet weak var outputTextView: UITextField!
    
    //An instance of the model
    var fibo: FibonacciModel = FibonacciModel()
    
    @IBAction func sliderValueDidChange(sender: AnyObject) {
    }
    func sliderValueDidChange () {
        
        var returnedArray: [Int] = []
        var formattedOutput:String = ""
        
        //Display the updated slider value
        self.selectedValueLabel!.text = String(Int(theSlider!.value))
        
        //Calculate the Fibonacci elements based on the new slider value
        returnedArray = self.fibo.calculateFibonacciNumbers(minimum2: Int(theSlider!.value))
        
        //Put the elements in a nicely formatted array
        for number in returnedArray {
            
            formattedOutput = formattedOutput + String(number) + ", "
        }
        
        //Update the textfield with the formatted array
        self.outputTextView!.text = formattedOutput
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

