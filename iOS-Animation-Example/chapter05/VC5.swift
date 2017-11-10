//
//  VC5.swift
//  iOS-Animation-Example
//
//  Created by Noverish Harold on 2017. 11. 10..
//  Copyright © 2017년 Noverish. All rights reserved.
//

import UIKit

class VC5: UIViewController {
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func startClicked() {
        let originalCenter = view1.center
        
        UIView.animateKeyframes(
            withDuration: 1.5,
            delay: 0.0,
            animations: {
                UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25) {
                    self.view1.center.x += 80.0
                    self.view1.center.y -= 10.0
                }
                
                UIView.addKeyframe(withRelativeStartTime: 0.1, relativeDuration: 0.4) {
                    self.view1.transform = CGAffineTransform(rotationAngle: -.pi / 8)
                }
                
                UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25) {
                    self.view1.center.x += 100.0
                    self.view1.center.y -= 50.0
                    self.view1.alpha = 0.0
                }
                
                UIView.addKeyframe(withRelativeStartTime: 0.51, relativeDuration: 0.01) {
                    self.view1.transform = .identity
                    self.view1.center = CGPoint(x: 0.0, y: originalCenter.y)
                }
                
                UIView.addKeyframe(withRelativeStartTime: 0.55, relativeDuration: 0.45) {
                    self.view1.alpha = 1.0
                    self.view1.center = originalCenter
                }
            },
            completion: nil
        )
        
        UIView.animateKeyframes(
            withDuration: 1.5,
            delay: 0.0,
            animations: {
                UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25) {
                    self.view2.center.x += 80.0
                }
                
                UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25) {
                    self.view2.center.x -= 80.0
                }
            },
            completion: nil
        )
    }

}
