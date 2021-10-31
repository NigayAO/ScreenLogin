//
//  ImageViewController.swift
//  ScreenLogin
//
//  Created by Alik Nigay on 29.10.2021.
//

import UIKit

class ImageViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    let topColor = UIColor(red: 0.82, green: 0.85, blue: 0.88, alpha: 1.00)
    let bottomColor = UIColor(red: 0.65, green: 0.37, blue: 0.92, alpha: 1.00)
    
    var image = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.makeGradientColor(firstColor: topColor, secondColor: bottomColor)
        imageView.image = UIImage(named: image)
    }
}

