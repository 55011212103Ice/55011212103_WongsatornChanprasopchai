//
//  ViewController.swift
//  exam_ANIMATIONS
//
//  Created by student on 11/7/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func animateButtonPressed(sender: AnyObject) {
        
        
        
        for loopNumber in 0...10{
            
            let duration : NSTimeInterval = 1.0
            let options = UIViewAnimationOptions.CurveLinear
            
            let delay =  NSTimeInterval( ((Int(rand()) %  900)+100.0) / 1000.0)
            let size : CGFloat = CGFloat( Int(rand()) %  40 + 20.0)
            let yPosition : CGFloat = CGFloat( Int(rand()) %  200 + 20.0)
            
            let fish = UIImageView()
            
            fish.image = UIImage(named: "blue-fish.png")
            fish.frame = CGRectMake(0-size, yPosition, size, size)
            self.view.addSubview(fish)
            
            // define the animation
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
                
                // move the fish
                fish.frame = CGRectMake(320, yPosition, size, size)
                
                }, completion: { animationFinished in
                    
                    // remove the fish
                    fish.removeFromSuperview()
                    
            })
       }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }



}

