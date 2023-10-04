//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mario Alvarado on 12/04/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi : BMI?
    
    func getBMIValue() -> String {
        let decimalBmi = String(format: "%.1f", bmi?.value ?? 0.0 )
        return decimalBmi
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "You don't have a BMI (For some reason lol)"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.gray
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        if bmiValue > 24.9 {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor.red)
        } else if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor.blue )
        } else {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.green)
        }
        
    }
}
