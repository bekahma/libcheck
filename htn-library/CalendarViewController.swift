//
//  CalendarViewController.swift
//  htn-library
//
//  Created by Rebecca Ma on 2021-01-16.
//

import UIKit
//import CalendarKit
//import EventKit
import WebKit

class CalendarViewController: UIViewController, WKNavigationDelegate {
    // var calendar: EKCalendar!
    
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let url = URL(string: "https://calendar.google.com/calendar")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }
    
    // Return an array of EventDescriptors for particular date
//    func eventsForDate(_ date: Date) -> [EventDescriptor] {
//      var models = calendar.date(date) // Get events (models) from the storage / API
//
//      var events = [Event]()
//
//      for model in models {
//          // Create new EventView
//          let event = Event()
//          // Specify StartDate and EndDate
//          event.startDate = model.startDate
//          event.endDate = model.endDate
//          // Add info: event title, subtitle, location to the array of Strings
//          var info = [model.title, model.location]
//          info.append("\(datePeriod.beginning!.format(with: "HH:mm")) - \(datePeriod.end!.format(with: "HH:mm"))")
//          // Set "text" value of event by formatting all the information needed for display
//          event.text = info.reduce("", {$0 + $1 + "\n"})
//          events.append(event)
//      }
//      return events
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
