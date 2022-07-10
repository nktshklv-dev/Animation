//
//  ViewController.swift
//  Animation
//
//  Created by Nikita  on 7/9/22.
//

import UIKit

class ViewController: UIViewController {
    var imageView: UIImageView!
    var animationCounter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView = UIImageView(image: UIImage(named: "penguin"))
        imageView.center = view.center
        view.addSubview(imageView)
    }
    
    @IBAction func tapped(_ sender: UIButton) {
        sender.isHidden = true
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 5, options: []) {
            switch self.animationCounter{
            case 0:
                self.imageView.transform = CGAffineTransform(scaleX: 2, y: 2)
            case 1:
                self.imageView.transform = CGAffineTransform.identity
            case 2:
                self.imageView.transform = CGAffineTransform(translationX: -200, y: -200)
            case 3:
                self.imageView.transform = CGAffineTransform.identity
            case 4:
                self.imageView.transform = CGAffineTransform(rotationAngle: .pi)
            case 5:
                self.imageView.transform = CGAffineTransform.identity
            case 6:
                self.imageView.alpha = 0.1
                self.imageView.backgroundColor = .red
            case 7:
                self.imageView.alpha = 1
                self.imageView.backgroundColor = .clear
            default:
                break
            }
        } completion: { finished in
            sender.isHidden = false
        }

            
        animationCounter += 1
        if animationCounter > 7{
            animationCounter = 0
        }
    }
    
}
