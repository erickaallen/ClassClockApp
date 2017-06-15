//
//  ViewController.swift
//  ClassClock
//
//  Created by Ericka Allen on 6/14/17.
//  Copyright © 2017 Ericka Allen. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    
    let timedNotificationIdentifier = "timedNotificationIdentifier"
    let timerGraphicAttachmentIdentifier = "timerGraphicAttachmentIdentifier"

    @IBAction func didPressNotifyButton(_ sender: Any) {
        UNUserNotificationCenter.current().getNotificationSettings  { (settings) in
            if(settings.authorizationStatus == .authorized) {
                // Schedule a push notification
                self.scheduleNotification()
            }
            else {
                // User has not given permission
                UNUserNotificationCenter.current().requestAuthorization(options: [.sound, .badge, .alert], completionHandler: { (granted, error) in
                    if let error = error {
                        print(error)
                    }
                    else {
                        if(granted) {
                            self.scheduleNotification()
                        }
                    }
                })
            }
        }
    }
    
    func scheduleNotification() {
        let content = UNMutableNotificationContent()
        content.title = "This is your notification title!"
        content.body = "Time's up!"
        
        let timerIconURL = Bundle.main.url(forResource: "timer", withExtension: "png")!
        
        let imageAttachment = try! UNNotificationAttachment(identifier: timerGraphicAttachmentIdentifier, url: timerIconURL, options: nil)
        content.attachments.append(imageAttachment)
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10.0, repeats: false)
        
        let notificationRequest = UNNotificationRequest(identifier: timedNotificationIdentifier, content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(notificationRequest) { (error) in
            if let error = error {
                print(error)
            }
            else {
                print("Notification scheduled!")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

