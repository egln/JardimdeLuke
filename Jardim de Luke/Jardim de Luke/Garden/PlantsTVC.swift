//
//  PlantsTVC.swift
//  Jardim de Luke
//
//  Created by egln on 13/05/22.
//

import UIKit

class PlantsTVC: UITableViewCell {

    @IBOutlet weak var plantView: UIView!
    @IBOutlet weak var plantimage: UIImageView!
    @IBOutlet weak var levelLbl: UILabel!
    
    @IBOutlet weak var plantNameLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}
