//
//  LocalNotificationService.swift
//  Verbage
//
//  Created by C4Q on 5/13/18.
//  Copyright © 2018 Vikash Hart. All rights reserved.
//

import UserNotifications

class LocalNotifications {
    
    func addLocalNotification(title: String, body: String, date: Date) {
        let content = UNMutableNotificationContent()
        content.title = title
        content.body = body
        content.sound = UNNotificationSound.default()
        
        let currentate = Date()
        let elapsedTime = date.timeIntervalSince(currentate)
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: elapsedTime, repeats: false)
        
        let request = UNNotificationRequest(identifier: "forgot to finish?", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
    
    func addLocalNotificationTest(title: String, body: String) {
        let content = UNMutableNotificationContent()
        content.title = title
        content.body = body
        content.sound = UNNotificationSound.default()
        
        let elapsedTime = 7
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: TimeInterval(elapsedTime), repeats: false)
        
        let request = UNNotificationRequest(identifier: "sprint ended", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
}
