//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Taylor Jenkins on 2/1/17.
//  Copyright © 2017 Taylor Jenkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var AppTitleLabel: UILabel!
    
    @IBOutlet weak var TextEntryBox: UITextField!

    @IBOutlet weak var ToFahrenheitButton: UIButton!
    
    @IBOutlet weak var ToCelsiusButton: UIButton!
    
    @IBOutlet weak var DisplayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //This function will convert the text entered into the Text Entry Box to Fahrenheit.
    @IBAction func ToFahrenheit(_ sender: UIButton) {
        var number = Int(TextEntryBox.text!)!
        number = number * 9/5 + 32
        DisplayLabel.text = "\(TextEntryBox.text!) Celsius = " + String(number) + " Fahrenheit"
    }
    
    //This function will convert the text entered into the Text Entry Box to Celsius.
    @IBAction func ToCelsius(_ sender: UIButton) {
        var number = Int(TextEntryBox.text!)!
        number = (number - 32) * 5/9
        DisplayLabel.text = "\(TextEntryBox.text!) Fahrenheit = " + String(number) + " Celsius"
    }


}

