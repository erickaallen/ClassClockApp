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
    
    var dateAndTime: NSDate
    var title: String
    var notes: String
    
    // Initialization to fail if no reminderText given
    
    //MARK: Initialization
    
    init?(dateAndTime: NSDate, title: String, notes: String) {
        if title.isEmpty {
            return nil
        }
        
        self.dateAndTime = dateAndTime
        self.title = title
        self.notes = notes
    }
}

