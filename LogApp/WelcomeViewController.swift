//
//  WelcomeViewController.swift
//  LogApp
//
//  Created by user on 13.02.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var unicodeWelcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientBackground()
        unicodeWelcomeLabel.text = "\u{1F44B}"
      
    }

    @IBAction func logOutButton() {
        dismiss(animated: true)
    }
    
    func setGradientBackground() {
        let colorTop =  UIColor(red: 255.0/255.0,
                                green: 149.0/255.0,
                                blue: 0.0/255.0,
                                alpha: 1.0).cgColor
        
        let colorBottom = UIColor(red: 255.0/255.0,
                                  green: 94.0/255.0,
                                  blue: 58.0/255.0,
                                  alpha: 1.0).cgColor
                    
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
                
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
    
}
