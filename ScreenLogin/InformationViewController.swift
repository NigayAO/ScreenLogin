//
//  InformationViewController.swift
//  ScreenLogin
//
//  Created by Alik Nigay on 29.10.2021.
//

import UIKit

class InformationViewController: UIViewController {
    
    
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var informationLabel: UILabel!
    
    let topColor = UIColor(red: 1.00, green: 0.83, blue: 0.19, alpha: 1.00)
    let bottomColor = UIColor(red: 0.99, green: 0.36, blue: 0.40, alpha: 1.00)
    
    var person = User(name: "", surName: "", phone: 0, email: "", company: "", avatar: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setText()
        view.makeGradientColor(firstColor: topColor, secondColor: bottomColor)
    }
    
    func setText() {
        nameLabel.text = "Name & Surname: \(person.name) \(person.surName)"
        ageLabel.text = "Phone: \(person.phone)"
        cityLabel.text = "City: \(person.email)"
        informationLabel.text = "Company: \(person.company)"
        avatarImage.image = UIImage(named: person.avatar)
        avatarImage.layer.cornerRadius = 65
    }

}

