//
//  ViewController.swift
//  BeastList
//
//  Created by admin on 09/12/2021.
//

import UIKit

class ViewController: UIViewController, BeastCellDelegate {
    
    var tasks = ["something", "something else", "final something"]
    
    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var taskDescriptionLabel: UILabel!
    
    
    @IBAction func beastButtonPressed(_ sender: UIButton) {
        if let task = taskTextField.text{
            tasks.append(task)
        }
        tableView.reloadData()
        taskTextField.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 60
    }
    func showTaskDescription(description: String) {
            taskDescriptionLabel.text = description
        }
}
extension ViewController: UITableViewDataSource, UITableViewDelegate {
     
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BeastCell", for: indexPath)  as! BeastTableViewCell

        cell.textLabel?.text = tasks[indexPath.row]
        cell.delegate = self
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Section: \(indexPath.section) and Row: \(indexPath.row)")
            tasks.remove(at: indexPath.row)
            tableView.reloadData()
    }
}








