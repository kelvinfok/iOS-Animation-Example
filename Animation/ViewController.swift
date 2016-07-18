//
//  ViewController.swift
//  Animation
//
//  Created by kelvinfok on 14/7/16.
//  Copyright © 2016 kelvinfok. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 1
    var timer = NSTimer()
    var isAnimating = true
    
    @IBOutlet weak var animateImage: UIImageView!
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBAction func buttonAnimate(sender: AnyObject) {
        
        if isAnimating == true {
            timer.invalidate()
            isAnimating = false
        }
        else {
            
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.startAnimation), userInfo: nil, repeats: true)
            
            isAnimating = true
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.counterLabel.text = "\(counter)"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.startAnimation), userInfo: nil, repeats: true)
    }
    
    func startAnimation() {
        
        if counter == 7 {
            
            counter = 1
        }
        else {
            
            counter += 1
        }
        
        animateImage.image = UIImage(named: "frame_\(counter).png")
        
        counterLabel.text = String(counter)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // Animation Stuff
    /*
    override func viewDidLayoutSubviews() {
        
        self.animateImage.center = CGPointMake(animateImage.center.x - 400, animateImage.center.y)
        self.animateImage.alpha = 0
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(3, animations: { () -> Void in
            self.animateImage.center = CGPointMake(self.animateImage.center.x + 400, self.animateImage.center.y)
            self.animateImage.alpha = 1
        })
    }
    
    */

}

