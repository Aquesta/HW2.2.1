//
//  ViewController.swift
//  HW2.2.1
//
//  Created by Геннадий Красношлык on 22.08.2020.
//  Copyright © 2020 Aquesta's. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var viewOutlet: UIView!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViewBackgroundColor()
    }
    
    override func viewWillLayoutSubviews() {
        viewOutlet.layer.cornerRadius = viewOutlet.frame.width / 10
    }
    
    @IBAction func slidersAction() {
        redValueLabel.text = String(Int(redSlider.value))
        greenValueLabel.text = String(Int(greenSlider.value))
        blueValueLabel.text = String(Int(blueSlider.value))
        setViewBackgroundColor()
    }
 
}
// MARK: - set view background color extention

extension ViewController {
    
    private func setViewBackgroundColor() {
        viewOutlet.layer.backgroundColor = .init(srgbRed: CGFloat(redSlider.value)/255,
                                           green: CGFloat(greenSlider.value)/255,
                                           blue: CGFloat(blueSlider.value)/255,
                                           alpha: 1.0)
    }
}


