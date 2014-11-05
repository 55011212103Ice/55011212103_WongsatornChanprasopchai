//
//  addMemberViewController.swift
//  lab6_coreData
//
//  Created by student on 11/5/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class addMemberViewController: UIViewController {
    
    var delegate: addMemberViewController? = nil
    

    
    @IBOutlet var inputName: UITextField!
    @IBAction func bSave(sender: AnyObject) {
        if(delegate != nil){
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
