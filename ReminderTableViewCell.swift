//
//  ReminderTableViewCell.swift
//  ClassClock
//
//  Created by Ericka Allen on 7/16/17.
//  Copyright © 2017 Ericka Allen. All rights reserved.
//

import UIKit

class ReminderTableViewCell: UITableViewCell {
    
    //MARK: Properties
    
    @IBOutlet weak var dateAndTime: UITextField!

    @IBOutlet weak var title: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
