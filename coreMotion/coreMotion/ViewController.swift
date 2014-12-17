//
//  ViewController.swift
//  coreMotion
//
//  Created by student on 11/21/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit
import CoreMotion
import AVFoundation

class ViewController: UIViewController {

	// Core Audio
	
	var audio1 = AVAudioPlayer()
	
		@IBAction func stop(sender: AnyObject) {
		coreAudio()
		audio1.stop()
	}
	
	
	
	@IBAction func start(sender: AnyObject) {
		coreAudio()
		audio1.play()
	}
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	
	// MARK: core data
	func coreAudio(){
		var url1 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("sound2", ofType: "mp3")!)
		
		var error: NSError?
		
		audio1 = AVAudioPlayer(contentsOfURL: url1, error: &error)
		audio1.prepareToPlay()
	}
	
	func coreMotion(){
		
		
	
	}
}