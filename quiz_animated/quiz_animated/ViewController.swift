//
//  ViewController.swift
//  ImageViewAnimation
//
//  Created by Gourav Nayyar on 14/06/14.
//  Copyright (c) 2014 myiosapplications. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var myImageView : UIImageView!
    @IBOutlet var myImageView2 : UIImageView!
    @IBOutlet var myImageView3 : UIImageView!
    @IBOutlet var myImageView4 : UIImageView!

    
    
    @IBOutlet var animationBtn : UIButton!
    var imageList = Array<UIImage>()
    
    @IBOutlet var numBombLable: UILabel!
    @IBOutlet var num: UILabel!
    
    
    @IBAction func numBom(sender: UIButton) {
        
        num.text = sender.titleLabel!.text!
        numBombLable.text = "Number of Bomb :  \(num.text!)"
        
        println(num)
    }
    
    @IBAction func animationBtnClicked(sender : AnyObject) {
        startAnimation()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for i in 1...13
        {
            let imageName = "\(i).png"
            imageList.append(UIImage(named: imageName))
            
            //            imageList += UIImage(named: imageName)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func startAnimation() -> Void {
        
        var num2:[String] = []
        
        if !myImageView.isAnimating() {
            if(num.text! == "1"){
                myImageView.animationImages = imageList
                myImageView.startAnimating()
            }
            if( num.text! == "2"){
                myImageView.animationImages = imageList
                myImageView.startAnimating()
                
                myImageView2.animationImages = imageList
                myImageView2.startAnimating()
            }else if( num.text! == "3"){
                myImageView.animationImages = imageList
                myImageView.startAnimating()
                
                myImageView2.animationImages = imageList
                myImageView2.startAnimating()
                
                myImageView3.animationImages = imageList
                myImageView3.startAnimating()
            
            }else if( num.text! == "4"){
                myImageView.animationImages = imageList
                myImageView.startAnimating()
                
                myImageView2.animationImages = imageList
                myImageView2.startAnimating()
                
                myImageView3.animationImages = imageList
                myImageView3.startAnimating()
                
                myImageView4.animationImages = imageList
                myImageView4.startAnimating()
            
            }
            animationBtn.setTitle("Stop Animation", forState: UIControlState.Normal)
        } else {
            myImageView.stopAnimating()
            myImageView2.stopAnimating()
            myImageView3.stopAnimating()
            myImageView4.stopAnimating()
            myImageView.image = UIImage(named:"bomb.jpg")
            animationBtn.setTitle("Start Animation", forState: UIControlState.Normal)
        }
        
    }
}

