//
//  VC8.swift
//  iOS-Animation-Example
//
//  Created by Noverish Harold on 2017. 12. 28..
//  Copyright © 2017년 Noverish. All rights reserved.
//

import UIKit

class VC9: UIViewController {
    
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
        let anim1 = CABasicAnimation(keyPath: "position.x")
        anim1.fromValue = 100
        anim1.toValue = 200
        anim1.duration = 1
        anim1.delegate = self
        anim1.setValue(image1.layer, forKey: "layer")
        image1.layer.add(anim1, forKey: "anim1")
        
        let anim2 = CABasicAnimation(keyPath: "position.x")
        anim2.fromValue = 100
        anim2.toValue = 200
        anim2.duration = 1
        anim2.delegate = self
        anim2.setValue(image2.layer, forKey: "layer")
        image2.layer.add(anim2, forKey: "anim2")
    }
}

extension VC9: CAAnimationDelegate {
    func animationDidStart(_ anim: CAAnimation) {
        guard let layer = anim.value(forKey: "layer") as? CALayer,
              let keys = layer.animationKeys() else {
            return
        }
        
        print("animationDidStart \(layer) has \(keys)")
    }
    
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        guard let layer = anim.value(forKey: "layer") as? CALayer else {
            return
        }
        
        print("animationDidStop \(layer) has \(String(describing: layer.animationKeys()))")
    }
}
