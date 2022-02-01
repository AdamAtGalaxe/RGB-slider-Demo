//
//  ResponderViewController.swift
//  firstApp
//
//  Created by Adam Roberts on 1/26/22.
//

import UIKit

class ResponderViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        let relogin = UIAlertController(title: "Login", message: "You have timed out. Pleasr enter your pin", preferredStyle: .alert)
        relogin.addTextField { (textField) in
            textField.keyboardType = .numberPad
            textField.isSecureTextEntry = true
        }
        let loginAction = UIAlertAction(title: "Login", style: .default){
            (action) in
        }
        relogin.addAction(loginAction)
        self.present(relogin, animated: true, completion: nil)
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
