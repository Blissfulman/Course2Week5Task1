//
//  ViewController.swift
//  Course2Week5Task1
//
//  Created by User on 14.07.2020.
//  Copyright © 2020 Evgeny. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var launchTimeLabel: UILabel!
    @IBOutlet weak var appearanceTimeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        launchTimeLabel.text = getDateAndTime()
    }
    
    private func getDateAndTime() -> String {
        let date = NSDate()
        let dateFormat: DateFormatter = DateFormatter()
        dateFormat.dateFormat = "MMM d, YYYY"
        let timeFormat: DateFormatter = DateFormatter()
        timeFormat.dateFormat = "hh:mm:ss a"
        return dateFormat.string(from: date as Date) + " at " + timeFormat.string(from: date as Date)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        appearanceTimeLabel.text = getDateAndTime()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        appearanceTimeLabel.text = getDateAndTime()
    }
    
    @IBAction func tapUpdateButton(_ sender: UIBarButtonItem) {
        viewWillLayoutSubviews()
    }
}

