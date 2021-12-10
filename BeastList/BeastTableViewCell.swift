//
//  BeastTableViewCell.swift
//  BeastList
//
//  Created by admin on 10/12/2021.
//

import UIKit

class BeastTableViewCell: UITableViewCell {
    
    var delegate: BeastCellDelegate?
    
    @IBAction func showButtonPressed(_ sender: UIButton) {
        delegate?.showTaskDescription(description: (self.textLabel?.text)!) 
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
