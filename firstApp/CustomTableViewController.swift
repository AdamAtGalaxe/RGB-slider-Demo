//
//  CustomTableViewController.swift
//  firstApp
//
//  Created by Adam Roberts on 1/27/22.
//

import UIKit

class CustomTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    var countries = CountryRepo().getCountries()
    var dolls = DollRepo().getDolls()

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //countries.count
        dolls.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath) as! CustomTableViewCell
        
        
        let rowData  = dolls[indexPath.row]
        //let rowData  = countries[indexPath.row]
        cell.topLabel.text = rowData.dollName
        //cell.topLabel.text = rowData.countryName
        cell.bottomLabel.text = "Kill Count : \(rowData.dollKillCount)"
        //cell.bottomLabel.text = rowData.countryDesc
        cell.customImageView.image = UIImage(named: rowData.dollImage)
        //cell.customImageView.image = UIImage(named: rowData.countryImage)
        return cell
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
