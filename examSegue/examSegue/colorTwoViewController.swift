//
//  colorTwoViewController.swift
//  examSegue
//
//  Created by student on 10/17/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class colorTwoViewController: UIViewController {
    
    var colorString = ""

    @IBAction func colorSelectionButton(sender: UIButton) {
    }
    
    @IBAction func saveColor(sender: AnyObject) {
    }
    
    @IBOutlet var colorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
