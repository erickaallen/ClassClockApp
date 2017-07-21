//
//  ReminderTableViewController.swift
//  ClassClock
//
//  Created by Ericka Allen on 7/16/17.
//  Copyright © 2017 Ericka Allen. All rights reserved.
//

import UIKit

class ReminderTableViewController: UITableViewController {
    
    //MARK: Properties
    
    let dateFormatter = DateFormatter()
    
    var reminders = [Reminder]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the sample reminders
        /// loadSampleReminders()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reminders.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "ReminderTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? ReminderTableViewCell else {
            fatalError("The dequeued cell is not an instance of ReminderTableViewCell.")
        }

        let reminder = reminders[indexPath.row]
        // cell.dateAndTime = reminder.dateAndTime
        cell.title.text = reminder.title
        
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: Private Methods
    
//    private func loadSampleReminders() {
//        guard let reminder1 = Reminder(dateAndTime: dateFormatter.date(from: "2017-07-21T10:57:37+0000")! as NSDate, title: "Visitors to class", notes: "Visitors for career day") else {
//            fatalError("Unable to instantiate reminder1")
//        
//        }
//        guard let reminder2 = Reminder(dateAndTime: dateFormatter.date(from: "2017-07-21T10:57:37+0000")! as NSDate, title: "Reading Group - Red", notes: "Take garbage out after work") else {
//            fatalError("Unable to instantiate reminder2")
//        }
//        guard let reminder3 = Reminder(dateAndTime: dateFormatter.date(from: "2017-07-21T10:57:37+0000")! as NSDate, title: "T.C. to ESL", notes: "Take scissors") else {
//            fatalError("Unable to instantiate reminder3")
//        }
//        
//        reminders += [reminder1, reminder2, reminder3]
//    }
    
}







































