//
//  CustomCollectionViewController.swift
//  firstApp
//
//  Created by Adam Roberts on 1/27/22.
//

import UIKit

private let reuseIdentifier = "Cell"

class CustomCollectionViewController: UICollectionViewController {
    
    var dolls = DollRepo().getDolls()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        carTableView.dataSource = self
//        carTableView.delegate = self
        //self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)


    }



    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        dolls.count
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        
        
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DollCell", for: indexPath) as! CustomCollectionViewCell
        
        
        let rowData  = dolls[indexPath.row]
        //let rowData  = countries[indexPath.row]
        cell.dollName.text = rowData.dollName
        //cell.topLabel.text = rowData.countryName
        cell.dollKills.text = "\(rowData.dollKillCount)"
        //cell.bottomLabel.text = rowData.countryDesc
        //cell.dollImage.image = UIImage(named: rowData.dollImage)
        //cell.customImageView.image = UIImage(named: rowData.countryImage)
        return cell

    
    }


}
