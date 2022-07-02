//
//  LevelTableViewCell.swift
//  Jardim de Luke
//
//  Created by egln on 14/05/22.
//

import UIKit

class LevelTableViewCell: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var levelTable: UIView!
    
    @IBOutlet weak var level: UIView!
    @IBOutlet weak var levelIcon: UIImageView!
    
    @IBOutlet weak var plantLbl: UILabel!
    @IBOutlet weak var levelLbl: UILabel!
    
    @IBOutlet weak var checkBox: UIImageView!
    
    
}
