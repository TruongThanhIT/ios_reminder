//
//  ViewController.swift
//  Reminder
//
//  Created by Trương Huỳnh Thuỵ Thái Thanh on 03/10/2021.
//

import UIKit

class ReminderListViewController: UITableViewController {
    
    
}

extension ReminderListViewController {
    static let reminderListCellIdentifier = "ReminderListCell"
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Reminder.testData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Self.reminderListCellIdentifier, for: indexPath) as? ReminderListCell else {
            fatalError("Unable to dequeue ReminderCell")
        }
        let reminder = Reminder.testData[indexPath.row]
        let image = reminder.isComplete ? UIImage(systemName: "circle.fill") : UIImage(systemName: "circle")
        cell.titleLabel.text = reminder.title
        cell.dateLabel.text = reminder.dueDate.description
        cell.doneButton.setImage(image, for: .normal)
        cell.titleLabel.numberOfLines = 0
        cell.doneButtonAction = {
            Reminder.testData[indexPath.row].isComplete.toggle()
//            tableView.reloadRows(at: [indexPath], with: .none)
            tableView.reloadData()
        }
        return cell
    }
    
}

