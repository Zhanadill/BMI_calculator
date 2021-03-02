//
//  BMI_logic.swift
//  BMI(copy)
//
//  Created by Жанадил on 2/18/21.
//

import Foundation

struct BMI_logic{
    
    func returnBMI(weight: Double, height: Double) -> BMI{
           let bmi = round((weight/(height * height)) * 100)/100
           
           if bmi<18.5{
               return BMI(bmiValue: bmi, advice: "eat more piece", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
           }else if bmi<24.9{
               return BMI(bmiValue: bmi, advice: "fit as a fiddle", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
           }else{
               return BMI(bmiValue: bmi, advice: "eat less pies", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
           }
       }
}
