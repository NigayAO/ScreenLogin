//
//  WelcomeViewController.swift
//  ScreenLogin
//
//  Created by Alik Nigay on 29.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var people = ""
    
    private let firstColor = UIColor(red: 0.48, green: 0.93, blue: 0.62, alpha: 1.00)
    private let secondColor = UIColor(red: 0.44, green: 0.63, blue: 1.00, alpha: 1.00)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.makeGradientColor(firstColor: firstColor, secondColor: secondColor)
        textLabel.text = "Hello \(people)! Welcome on a board!"
    }
}

//MARK: - Extension for View
extension UIView {
    func makeGradientColor(firstColor: UIColor, secondColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [firstColor.cgColor, secondColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}

