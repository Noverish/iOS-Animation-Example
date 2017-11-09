//
//  VC1.swift
//  iOS-Animation-Example
//
//  Created by Noverish Harold on 2017. 11. 8..
//  Copyright © 2017년 Noverish. All rights reserved.
//

import UIKit

class VC1: UIViewController {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var view7: UIView!
    @IBOutlet weak var view8: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func startClicked() {
        view1.center.x -= view.bounds.width
        view2.center.x -= view.bounds.width
        view3.center.x -= view.bounds.width
        view4.center.x -= view.bounds.width
        view5.center.x -= view.bounds.width
        view6.center.x -= view.bounds.width
        view7.center.x -= view.bounds.width
        view8.center.x -= view.bounds.width
        
        view2.alpha = 0
        view3.alpha = 0
        view4.alpha = 0
        view5.alpha = 0
        view6.alpha = 0
        view7.alpha = 0
        view8.alpha = 0
        
        UIView.animate(withDuration: 2) {
            self.view1.center.x += self.view.bounds.width
        }
        
        UIView.animate(withDuration: 2) {
            self.view2.center.x += self.view.bounds.width
            self.view2.alpha = 1
        }
        
        UIView.animate(withDuration: 2, delay: 0.5, options: [], animations: {
            self.view3.center.x += self.view.bounds.width
            self.view3.alpha = 1
        }, completion: nil)
        
        UIView.animate(withDuration: 2, delay: 0.5, options: [.repeat], animations: {
            self.view4.center.x += self.view.bounds.width
            self.view4.alpha = 1
        }, completion: nil)
        
        UIView.animate(withDuration: 2, delay: 0.5, options: [.repeat, .autoreverse], animations: {
            self.view5.center.x += self.view.bounds.width
            self.view5.alpha = 1
        }, completion: nil)
        
        UIView.animate(withDuration: 2, delay: 0.5, options: [.repeat, .curveEaseIn], animations: {
            self.view6.center.x += self.view.bounds.width
            self.view6.alpha = 1
        }, completion: nil)
        
        UIView.animate(withDuration: 2, delay: 0.5, options: [.repeat, .curveEaseOut], animations: {
            self.view7.center.x += self.view.bounds.width
            self.view7.alpha = 1
        }, completion: nil)
        
        UIView.animate(withDuration: 2, delay: 0.5, options: [.repeat, .curveEaseInOut], animations: {
            self.view8.center.x += self.view.bounds.width
            self.view8.alpha = 1
        }, completion: nil)
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
