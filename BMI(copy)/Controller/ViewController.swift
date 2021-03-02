//
//  ViewController.swift
//  BMI(copy)
//
//  Created by Жанадил on 2/16/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    let bmi = BMI_logic()
    var w:Double = 100.0
    var h:Double = 1.50
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func heightSlider2(_ sender: UISlider) {
        heightLabel.text = "\(round(sender.value * 100)/100) M"
        h = Double(round(sender.value * 100)/100)
    }
    @IBAction func weightSlider(_ sender: UISlider) {
        weightLabel.text = "\(round(sender.value)) KG"
        w = Double(round(sender.value))
    }
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "segue1", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ViewController2
        destinationVC.bmi = bmi.returnBMI(weight: w, height: h)
    }
}
