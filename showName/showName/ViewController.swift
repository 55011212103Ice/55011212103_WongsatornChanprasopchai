//
//  ViewController.swift
//  showName
//
//  Created by student on 9/26/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet var listName: UITableView!
    @IBOutlet var inputName: UITextField!
    @IBOutlet var tableView: UITableView!
    
    var lName = ["a", "b", "c", "d"]
    let cellIdentifier = "cellIdentiier"
    
    @IBAction func bOK(sender: AnyObject) {
        
        
    }
    @IBAction func bReset(sender: AnyObject) {
        inputName.text = nil
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: self.cellIdentifier)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    // DataSource Method
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lName.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(self.cellIdentifier) as UITableViewCell
        
        cell.textLabel!.text = lName[indexPath.row]
        return cell
    }
    
    //UITableViewDelegate method
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        
    }
}

