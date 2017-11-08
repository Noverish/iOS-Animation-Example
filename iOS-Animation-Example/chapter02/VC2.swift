//
//  VC2.swift
//  iOS-Animation-Example
//
//  Created by Noverish Harold on 2017. 11. 8..
//  Copyright © 2017년 Noverish. All rights reserved.
//

import UIKit

class VC2: UIViewController {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    let spinner = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        spinner.frame = CGRect(x: -20.0, y: 6.0, width: 20.0, height: 20.0)
        spinner.startAnimating()
        spinner.alpha = 0.0
        button1.addSubview(spinner)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func startClicked() {
        view1.center.x -= view.bounds.width
        view2.center.x -= view.bounds.width
        view3.center.x -= view.bounds.width
        view4.center.x -= view.bounds.width
        view5.center.x -= view.bounds.width
        view6.center.x -= view.bounds.width
        
        UIView.animate(withDuration: 3, delay: 0.0,
                       usingSpringWithDamping: 0.0, initialSpringVelocity: 0.0, options: [],
                       animations: {
                        self.view1.center.x += self.view.bounds.width
        }, completion: nil)
        
        UIView.animate(withDuration: 3, delay: 0.0,
                       usingSpringWithDamping: 0.5, initialSpringVelocity: 0.0, options: [],
                       animations: {
                        self.view2.center.x += self.view.bounds.width
        }, completion: nil)
        
        UIView.animate(withDuration: 3, delay: 0.0,
                       usingSpringWithDamping: 1.0, initialSpringVelocity: 0.0, options: [],
                       animations: {
                        self.view3.center.x += self.view.bounds.width
        }, completion: nil)
        
        UIView.animate(withDuration: 3, delay: 0.0,
                       usingSpringWithDamping: 0.5, initialSpringVelocity: 0.0, options: [],
                       animations: {
                        self.view4.center.x += self.view.bounds.width
        }, completion: nil)
        
        UIView.animate(withDuration: 3, delay: 0.0,
                       usingSpringWithDamping: 0.5, initialSpringVelocity: 1.0, options: [],
                       animations: {
                        self.view5.center.x += self.view.bounds.width
        }, completion: nil)
        
        UIView.animate(withDuration: 3, delay: 0.0,
                       usingSpringWithDamping: 0.5, initialSpringVelocity: 3.0, options: [],
                       animations: {
                        self.view6.center.x += self.view.bounds.width
        }, completion: nil)
    }
    
    @IBAction func resetClicked() {
        button1.bounds.size.width = 200
        self.spinner.alpha = 0.0
        button2.center.y = 496 + 25
        button2.backgroundColor = UIColor.red
    }
    
    @IBAction func button1Clicked() {
        UIView.animate(withDuration: 1.5, delay: 0.0, usingSpringWithDamping:
            0.2, initialSpringVelocity: 0.0, options: [], animations: {
                self.button1.bounds.size.width += 80.0
                
                self.spinner.center = CGPoint(
                    x: 40.0,
                    y: self.button1.frame.size.height/2
                )
                self.spinner.alpha = 1.0
        }, completion: nil)
    }
    
    @IBAction func button2Clicked() {
        UIView.animate(withDuration: 0.33, delay: 0.0, usingSpringWithDamping:
            0.7, initialSpringVelocity: 0.0, options: [], animations: {
                self.button2.center.y += 50.0
                self.button2.backgroundColor = self.button2.backgroundColor == UIColor.blue ? UIColor.red : UIColor.blue
        }, completion: nil)
    }
    
    @IBAction func prevClicked() {
        dismiss(animated: false)
        
        let storyboard = UIStoryboard(name: "VC1", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "VC1") as UIViewController
        present(vc, animated: false, completion: nil)
    }
    
    @IBAction func nextClicked() {
        dismiss(animated: false)
        
        let storyboard = UIStoryboard(name: "VC3", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "VC3") as UIViewController
        present(vc, animated: false, completion: nil)
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
