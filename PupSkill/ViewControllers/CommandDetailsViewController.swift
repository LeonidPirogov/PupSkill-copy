//
//  CommandDetailsViewController.swift
//  PupSkill
//
//  Created by Leonid on 08.08.2025.
//

import UIKit
import WebKit

class CommandDetailsViewController: UIViewController {

    
    @IBOutlet var dogCommandImageView: UIImageView!
    @IBOutlet var descriptionLabel: UILabel!
    
    var command: Command!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dogCommandImageView.image = UIImage(named: command.image)
        dogCommandImageView.layer.cornerRadius = 12
        title = command.title
        descriptionLabel.text = command.description
    }
}
