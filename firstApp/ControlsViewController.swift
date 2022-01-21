//
//  ControlsViewController.swift
//  firstApp
//
//  Created by Adam Roberts on 1/21/22.
//

import UIKit

class ControlsViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    var red : Float = 0.0
    var green : Float = 0.0
    var blue : Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func changeText(_ sender: Any) {
        myLabel.text = textField.text;
    }
    
    @IBAction func sliderChange(_ sender: UISlider) {
        percentLabel.text = "\(Int(sender.value))%"

    }
    
    @IBAction func redSlider(_ sender: UISlider) {
        red = sender.value
        self.view.backgroundColor = UIColor.init(_colorLiteralRed: red, green: green, blue: blue, alpha: 1.0)
    }
    
    @IBAction func greenSlider(_ sender: UISlider) {
        green = sender.value
        self.view.backgroundColor = UIColor.init(_colorLiteralRed: red, green: green, blue: blue, alpha: 1.0)
    }
    
    @IBAction func blueSlider(_ sender: UISlider) {
        blue = sender.value
        self.view.backgroundColor = UIColor.init(_colorLiteralRed: red, green: green, blue: blue, alpha: 1.0)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
