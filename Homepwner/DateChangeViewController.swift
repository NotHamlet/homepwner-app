//
//  DateChangeViewController.swift
//  Homepwner
//
//  Created by Stephen Atwood on 3/17/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import UIKit

class DateChangeViewController : UIViewController {
    @IBOutlet var datePicker: UIDatePicker!
    
    var item: Item! {
        didSet {
            navigationItem.title = "\(item.name) - date created"
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        datePicker.date = item.dateCreated
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        item.dateCreated = datePicker.date
    }
    
}
