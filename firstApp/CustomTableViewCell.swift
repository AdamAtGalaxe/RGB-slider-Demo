//
//  CustomTableViewCell.swift
//  firstApp
//
//  Created by Adam Roberts on 1/27/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {


    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var bottomLabel: UILabel!
    
    @IBOutlet weak var customImageView: UIImageView!
    


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
