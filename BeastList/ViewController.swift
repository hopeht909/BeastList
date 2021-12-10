//
//  ViewController.swift
//  BeastList
//
//  Created by admin on 09/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var tasks = ["Exercise for 30 minutes", "Wireframe for some project", "Do laundry"]
    
    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    
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
    }
}
extension ViewController: UITableViewDataSource, UITableViewDelegate {
     
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)

        cell.textLabel?.text = tasks[indexPath.row]
            
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Section: \(indexPath.section) and Row: \(indexPath.row)")
            tasks.remove(at: indexPath.row)
            tableView.reloadData()
    }
}








