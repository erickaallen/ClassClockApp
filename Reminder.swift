//
//  Reminder.swift
//  ClassClock
//
//  Created by Ericka Allen on 7/16/17.
//  Copyright © 2017 Ericka Allen. All rights reserved.
//

import UIKit

class Reminder {
    
    //MARK: Properties
    
    var dateAndTime: Date
    var reminderText: String
    
    // Initialization to fail if no reminderText given
    
    //MARK: Initialization
    
    init?(dateAndTime: Date, reminderText: String) {
        if reminderText.isEmpty {
            return nil
        }
        
        self.dateAndTime = dateAndTime
        self.reminderText = reminderText
        
    }
}

