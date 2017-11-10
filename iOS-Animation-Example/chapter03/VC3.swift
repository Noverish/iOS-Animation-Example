//
//  VC3.swift
//  iOS-Animation-Example
//
//  Created by Noverish Harold on 2017. 11. 8..
//  Copyright © 2017년 Noverish. All rights reserved.
//

import UIKit

class VC3: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet var view1: UIView!
    @IBOutlet var view2: UIView!
    @IBOutlet var view3: UIView!
    @IBOutlet var view4: UIView!
    @IBOutlet var view5: UIView!
    @IBOutlet var view6: UIView!
    @IBOutlet var view7: UIView!
    @IBOutlet var view8: UIView!
    @IBOutlet var view9: UIView!
    
    var animationContainerView: UIView!
    
    override func viewDidLoad() {
        //set up the animation container
        
    }
    
    @IBAction func startClicked() {
        UIView.transition(with: self.view1,
                          duration: 0.7,
                          options: [.curveEaseOut, .transitionFlipFromLeft],
                          animations: {
                            
        },
                          completion: nil
        )
        
        UIView.transition(with: self.view2,
                          duration: 0.7,
                          options: [.curveEaseOut, .transitionFlipFromRight],
                          animations: {
                            
        },
                          completion: nil
        )
        
        UIView.transition(with: self.view3,
                          duration: 0.7,
                          options: [.curveEaseOut, .transitionFlipFromTop],
                          animations: {
                            
        },
                          completion: nil
        )
        
        UIView.transition(with: self.view4,
                          duration: 0.7,
                          options: [.curveEaseOut, .transitionFlipFromBottom],
                          animations: {
                            
        },
                          completion: nil
        )
        
        UIView.transition(with: self.view5,
                          duration: 0.7,
                          options: [.curveEaseOut, .transitionCurlUp],
                          animations: {
                            
        },
                          completion: nil
        )
        
        UIView.transition(with: self.view6,
                          duration: 0.7,
                          options: [.curveEaseOut, .transitionCurlDown],
                          animations: {
                            self.view5.isHidden = false
        },
                          completion: nil
        )
        
        view7.isHidden = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            UIView.transition(with: self.view7,
                              duration: 0.7,
                              options: [.curveEaseOut, .transitionCrossDissolve],
                              animations: {
                                self.view7.isHidden = false
            },
                              completion: nil
            )
        }
        
        view8.isHidden = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            UIView.transition(with: self.view8,
                              duration: 0.7,
                              options: [.curveEaseOut, .transitionCurlDown],
                              animations: {
                                self.view8.isHidden = false
            },
                              completion: nil
            )
        }
        
        view9.isHidden = false
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            UIView.transition(with: self.view9,
                              duration: 0.7,
                              options: [.curveEaseOut, .transitionCurlUp],
                              animations: {
                                self.view9.isHidden = true
            },
                              completion: nil
            )
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
