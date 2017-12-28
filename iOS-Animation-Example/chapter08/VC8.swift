//
//  VC8.swift
//  iOS-Animation-Example
//
//  Created by Noverish Harold on 2017. 12. 28..
//  Copyright © 2017년 Noverish. All rights reserved.
//

import UIKit

class VC8: UIViewController {
    
    @IBOutlet weak var image1: UIButton!
    @IBOutlet weak var image2: UIButton!
    @IBOutlet weak var image3: UIButton!
    @IBOutlet weak var image4: UIButton!
    @IBOutlet weak var image5: UIButton!
    @IBOutlet weak var image6: UIButton!
    @IBOutlet weak var image7: UIButton!
    @IBOutlet weak var image8: UIButton!
    @IBOutlet weak var image9: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func stactClicked() {
        let flyRight = CABasicAnimation(keyPath: "position.x")
        flyRight.fromValue = -25 - 8
        flyRight.toValue = view.bounds.size.width - 25 - 8
        flyRight.duration = 1
        image1.layer.add(flyRight, forKey: nil)
        
        flyRight.beginTime = CACurrentMediaTime() + 0.4
        flyRight.duration = 0.6
        image2.layer.add(flyRight, forKey: nil)
    
        
        flyRight.fromValue = 100
        flyRight.toValue = view.bounds.size.width - 100
        
        flyRight.fillMode = kCAFillModeBackwards
        image3.layer.add(flyRight, forKey: nil)

        flyRight.fillMode = kCAFillModeForwards
        image4.layer.add(flyRight, forKey: nil)

        flyRight.fillMode = kCAFillModeBoth
        image5.layer.add(flyRight, forKey: nil)
        
        flyRight.fillMode = kCAFillModeForwards
        flyRight.isRemovedOnCompletion = false
        image6.layer.add(flyRight, forKey: nil)
        
        flyRight.fillMode = kCAFillModeBoth
        flyRight.isRemovedOnCompletion = false
        image7.layer.add(flyRight, forKey: nil)
        
        let color = UIColor(red: 0.98, green: 0.76, blue: 0.54, alpha: 1.0)
        VC8.tintBackgroundColor(layer: image8.layer, to: color)
        
        VC8.roundCorners(layer: image9.layer, toRadius: 25.0)
    }
    
    static func tintBackgroundColor(layer: CALayer, to color: UIColor) {
        let animation = CABasicAnimation(keyPath: "backgroundColor")
        animation.fromValue = layer.backgroundColor
        animation.toValue = color.cgColor
        animation.duration = 1
        layer.add(animation, forKey: nil)
    }
    
    static func roundCorners(layer: CALayer, toRadius: CGFloat) {
        let animation = CABasicAnimation(keyPath: "cornerRadius")
        animation.fromValue = layer.cornerRadius
        animation.toValue = toRadius
        animation.duration = 1
        layer.add(animation, forKey: nil)
    }
}
