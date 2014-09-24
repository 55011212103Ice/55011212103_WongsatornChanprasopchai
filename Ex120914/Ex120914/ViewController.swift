//
//  ViewController.swift
//  Ex120914
//
//  Created by student on 9/12/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet  var l1: UILabel!
    @IBOutlet  var l2: UILabel!
    @IBOutlet  var l3: UILabel!
    

    var nL1 = 0
    var nL2 = 0
    var nL3 = 0
    
    @IBAction func b1(sender: AnyObject) {
        nL1 += 1
        l1.text = "\(nL1)"
    }
    @IBAction func b2(sender: AnyObject) {
        nL2 += 1
        l2.text = "\(nL2)"
    }
    @IBAction func b3(sender: AnyObject) {
        nL3 += 1
        l3.text = "\(nL3)"
    }
    
    
    @IBAction func bReset(sender: AnyObject) {
        nL1 = 0
        nL2 = 0
        nL3 = 0
        
        l1.text = "0"
        l2.text = "0"
        l3.text = "0"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

