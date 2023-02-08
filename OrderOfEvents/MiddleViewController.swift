//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by Zane Jones on 2/6/23.
//

import UIKit

class MiddleViewController: UIViewController {
    
    @IBOutlet var eventsLabel: UILabel!
    
    
    var eventNumber = 1
    
    func addEvent(from: String) {
        if let existingText = eventsLabel.text {
            eventsLabel.text = "\(existingText)\nEvent number \(eventNumber) was \(from)"
            eventNumber += 1
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addEvent(from: "viewDidLoad")
    }
    override func viewWillAppear(_ animated: Bool) {
        addEvent(from: "viewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        addEvent(from: "viewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        addEvent(from: "viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        addEvent(from: "viewDidDisappear")
    }
}
