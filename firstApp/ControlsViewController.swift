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
    @IBOutlet var colorSliders: [UISlider]!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var terms: UISwitch!
    @IBOutlet weak var clickMeButton: UIButton!
    
    var imagePicker : UIImagePickerController!

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func changeText(_ sender: Any) {
        myLabel.text = textField.text;
    }
    @IBAction func sliderChange(_ sender: UISlider) {
        percentLabel.text = "\(Int(sender.value))%"

    }
    @IBAction func colorSliderChange(_ sender: Any) {
        self.view.backgroundColor = UIColor.init(_colorLiteralRed: colorSliders[0].value , green: colorSliders[1].value, blue: colorSliders[2].value, alpha: colorSliders[3].value)
    }
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            self.view.backgroundColor = UIColor.red
            colorSliders[0].value = 1.0
            colorSliders[1].value = 0.0
            colorSliders[2].value = 0.0
            colorSliders[3].value = 1.0
        case 1:
            self.view.backgroundColor = UIColor.green
            colorSliders[0].value = 0.0
            colorSliders[1].value = 1.0
            colorSliders[2].value = 0.0
            colorSliders[3].value = 1.0
        case 2:
            self.view.backgroundColor = UIColor.blue
            colorSliders[0].value = 0.0
            colorSliders[1].value = 0.0
            colorSliders[2].value = 1.0
            colorSliders[3].value = 1.0
        case 3:
            self.view.backgroundColor = UIColor.white
            colorSliders[0].value = 1.0
            colorSliders[1].value = 1.0
            colorSliders[2].value = 1.0
            colorSliders[3].value = 1.0
        default:
            break
        }
    }
    @IBAction func agree(_ sender: UISwitch) {
        if(sender.isOn == true){
            clickMeButton.isEnabled = true
        }else{
            clickMeButton.isEnabled = false
        }
    }
    @IBAction func getPicture(_ sender: UIButton) {
        
    }
    
    
    
    
    
    
    
    
    /*
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
    */
    

    /*
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
