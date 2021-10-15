//
//  ReminderListCell.swift
//  Reminder
//
//  Created by Trương Huỳnh Thuỵ Thái Thanh on 03/10/2021.
//

import UIKit

class ReminderListCell : UITableViewCell {
    typealias DoneButtonAction = () -> Void
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var doneButton: UIButton!
    
    var doneButtonAction: DoneButtonAction?
    
    @IBAction func doneButtonTriggered(_ sender: UIButton){
        doneButtonAction?()
    }
}
