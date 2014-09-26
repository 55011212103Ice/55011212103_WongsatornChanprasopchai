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
    
    var  listStudent = ""
    
    @IBAction func bOK(sender: AnyObject) {
        let alert = UIAlertController(title: "Success", message: "Add name \(inputName.text) Success", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: { (alert: UIAlertAction!) in
            println("An alert of type \(alert.style.hashValue) was tapped!")
        }))
        self.presentViewController(alert, animated: true, completion: nil)
        inputName.text = ""
        
        
        
    }
    @IBAction func bReset(sender: AnyObject) {
        inputName.text = nil
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}

