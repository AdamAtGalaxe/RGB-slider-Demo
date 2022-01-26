//
//  SimpleTableViewController.swift
//  firstApp
//
//  Created by Adam Roberts on 1/26/22.
//

import UIKit

class SimpleTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    

    @IBOutlet weak var carTableView: UITableView!
    let cars = ["Audi", "BMW", "Camaro", "Dodge", "Ford", "Ferrari", "Lotus", "MG", "Mitsubishi", "Honda", "Toyota", "Volkwagon", "Rolls-Royce", "Land Rover", "Volvo", "Lamborghini", "Mazda", "Kia", "Subaru", "Mercedes", "Jeep", "Alpha Romeo", "Pontiac"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        carTableView.dataSource = self
        carTableView.delegate = self

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarCell", for: indexPath)
        cell.textLabel?.text = cars[indexPath.row]
        
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //DON'T DO THIS!
//        let cell = tableView.cellForRow(at: indexPath)
//        print(cell?.textLabel?.text as Any)
        print(cars[indexPath.row])
    }

}
