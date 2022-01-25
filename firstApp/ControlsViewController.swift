//
//  ControlsViewController.swift
//  firstApp
//
//  Created by Adam Roberts on 1/21/22.
//

import UIKit

class ControlsViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet var colorSliders: [UISlider]!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var terms: UISwitch!
    @IBOutlet weak var clickMeButton: UIButton!
    @IBOutlet weak var galleryImageView: UIImageView!
    
    @IBOutlet weak var emailTextField: UITextField!
    var picker = UIImagePickerController()

    var initialFrame, finalFrame : CGRect?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.delegate = self
        textField.delegate = self

    }
    override func viewWillAppear(_ animated: Bool) {
        
    }
    override func viewDidAppear(_ animated: Bool) {
        initialFrame = self.view.frame
        finalFrame = self.view.frame
        //finalFrame!.origin.y -= 300
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
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            picker.sourceType = .camera
        }
        else if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            picker.sourceType = .photoLibrary
        }
        picker.delegate = self
        self.present(picker, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        galleryImageView.image = info[.originalImage] as? UIImage
        picker.dismiss(animated: true, completion: nil)
        
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        //view.endEditing(true)
        return true
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        UIView.animate(withDuration: 0.3){ [self] in
            
            finalFrame!.origin.y -= CGFloat(textField.tag)
            self.view.frame = self.finalFrame!
            
        }
        
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        UIView.animate(withDuration: 0.3){ [self] in
            finalFrame!.origin.y += CGFloat(textField.tag)
            self.view.frame = self.initialFrame!
        }
        
    }
}
