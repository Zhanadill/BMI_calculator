//
//  ViewController2.swift
//  BMI(copy)
//
//  Created by Жанадил on 2/16/21.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var bmiValue: UILabel!
    @IBOutlet weak var advice: UILabel!
    var bmi = BMI(bmiValue: nil, advice: nil, color: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiValue.text = "\(bmi.bmiValue!)"
        advice.text = bmi.advice!
        view.backgroundColor = bmi.color
    }
  
    @IBAction func recalcButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
