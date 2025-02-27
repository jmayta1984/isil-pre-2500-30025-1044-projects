//
//  ContentView.swift
//  Notifications
//
//  Created by user272495 on 2/26/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button ("Request permission") {
                requestPermission()
            }
            
            Button ("Calendar notification") {
                calendarNotification()
            }
            
            Button ("Schedule notification") {
                scheduleNotification()
            }
        }
        .padding()
    }
    
    func requestPermission() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { granted, error in
            
            if let error = error {
                print("Error: \(error.localizedDescription)")
            } else {
                print("Permission granted: \(granted)")
            }
        }
    }
    
    func calendarNotification () {
        let content = UNMutableNotificationContent()
        content.title = "Calendar notification"
        content.body = "A new notification"
        content.sound = .default
        
        var dateComponents = DateComponents()
        dateComponents.hour = 22
        dateComponents.minute = 06
        dateComponents.second = 0
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request) { error in

            if let error = error {
                print("Error: \(error.localizedDescription)")
            } else {
                print("Notification OK")
            }
            
            
        }
    }
    
    func scheduleNotification () {
        let content = UNMutableNotificationContent()
        content.title = "Schedule notification"
        content.body = "A new notification"
        content.sound = .default
        

        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request) { error in

            if let error = error {
                print("Error: \(error.localizedDescription)")
            } else {
                print("Notification OK")
            }
            
            
        }
    }
}

#Preview {
    ContentView()
}
