//
//  UserTableViewCell.swift
//  mvvmExample
//
//  Created by Faizan Ali  on 2021/11/29.
//

import Foundation
import UIKit

class UserTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var userIdLabel: UILabel!
    @IBOutlet weak var userTitleLabel: UILabel!
    
    var user : UserData? {
        didSet {
            userIdLabel.text = String(user?.id ?? 0)
            userTitleLabel.text = user?.title
        }
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
