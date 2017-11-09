//
//  VC4.swift
//  iOS-Animation-Example
//
//  Created by Noverish Harold on 2017. 11. 9..
//  Copyright © 2017년 Noverish. All rights reserved.
//

import UIKit

enum AnimationDirection: Int {
    case positive = 1
    case negative = -1
}

class VC4: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var snowViewLayout: UIView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var startLabel: UILabel!
    var snowView: SnowView!
    
    var sunnyImage = #imageLiteral(resourceName: "bg-sunny")
    var snowyImage = #imageLiteral(resourceName: "bg-snowy")
    var labelNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        snowView = SnowView(frame: CGRect(x: -150, y:-100, width: 300, height: 50))
        snowView = SnowView(frame: CGRect(x: -20, y: -20, width: 20, height: 20))
        
        snowViewLayout.clipsToBounds = true
        snowViewLayout.addSubview(snowView)
    }
    
    func fade(imageView: UIImageView, toImage: UIImage, showEffects: Bool) {
        UIView.transition(with: imageView, duration: 1.0,
                          options: .transitionCrossDissolve,
                          animations: {
                            imageView.image = toImage
        },
                          completion: nil
        )
        UIView.animate(withDuration: 1.0, delay: 0.0,
                       options: .curveEaseOut,
                       animations: {
                        self.snowView.alpha = showEffects ? 1.0 : 0.0
        },
                       completion: nil
        )
    }
    
    func cubeTransition(label: UILabel, text: String, direction: AnimationDirection) {
        let auxLabel = UILabel(frame: label.frame)
        auxLabel.text = text
        auxLabel.font = label.font
        auxLabel.textAlignment = label.textAlignment
        auxLabel.textColor = label.textColor
        auxLabel.backgroundColor = label.backgroundColor
        
        let auxLabelOffset = CGFloat(direction.rawValue) * label.frame.size.height/2.0
        auxLabel.transform = CGAffineTransform(scaleX: 1.0, y: 0.1).concatenating(
                CGAffineTransform(translationX: 0.0, y: auxLabelOffset)
        )
        label.superview?.addSubview(auxLabel)
        
        UIView.animate(
            withDuration: 0.5,
            delay: 0.0,
            options: .curveEaseOut,
            animations: {
                auxLabel.transform = .identity
                label.transform =
                    CGAffineTransform(scaleX: 1.0, y: 0.1).concatenating(
                        CGAffineTransform(translationX: 0.0, y: -auxLabelOffset)
                )
            },
            completion: { _ in
                label.text = auxLabel.text
                label.transform = .identity
                auxLabel.removeFromSuperview()
            }
        )
    }
    
    func moveLabel(label: UILabel, text: String, offset: CGPoint) {
        let auxLabel = UILabel(frame: label.frame)
        auxLabel.text = text
        auxLabel.font = label.font
        auxLabel.textAlignment = label.textAlignment
        auxLabel.textColor = label.textColor
        auxLabel.backgroundColor = UIColor.clear
        auxLabel.transform = CGAffineTransform(translationX: offset.x, y: offset.y)
        auxLabel.alpha = 0
        label.superview!.addSubview(auxLabel)
        
        UIView.animate(
            withDuration: 0.5,
            delay: 0.0,
            options: .curveEaseIn,
            animations: {
                label.transform = CGAffineTransform(translationX: offset.x, y: offset.y)
                label.alpha = 0.0
            },
            completion: nil
        )
        
        UIView.animate(
            withDuration: 0.25,
            delay: 0.1,
            options: .curveEaseIn,
            animations: {
                auxLabel.transform = .identity
                auxLabel.alpha = 1.0
            },
            completion: { _ in
                auxLabel.removeFromSuperview()
                label.text = text
                label.alpha = 1.0
                label.transform = .identity
            }
        )
    }
    
    @IBAction func startClicked() {
        let toSnowy = imageView.image == sunnyImage ? true : false
        
        fade(imageView: imageView,
             toImage: toSnowy ? snowyImage : sunnyImage,
             showEffects: toSnowy)
        
        labelNum += 1
        cubeTransition(label: label, text: "Day\(labelNum)", direction: .positive)
        
        let offsetDeparting = CGPoint(x: 50, y: 0)
        moveLabel(label: startLabel, text: "Person\(labelNum)", offset: offsetDeparting)
        
//        let offsetArriving = CGPoint(
//            x: 0.0,
//            y: CGFloat(direction.rawValue * 50)
//        )
//        moveLabel(label: arrivingTo, text: data.arrivingTo,
//                  offset: offsetArriving)
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
