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
        
    }
    
    override func viewWillLayoutSubviews() {
        viewOutlet.layer.cornerRadius = viewOutlet.frame.width / 10
        setViewBackgroundColor(view: viewOutlet)
    }
    
    @IBAction func redSliderAction() {
        redValueLabel.text = String(Int(redSlider.value))
        setViewBackgroundColor(view: viewOutlet)
    }
    
    @IBAction func greenSliderAction() {
        greenValueLabel.text = String(Int(greenSlider.value))
        setViewBackgroundColor(view: viewOutlet)
    }
    
    @IBAction func blueSliderAction() {
        blueValueLabel.text = String(Int(blueSlider.value))
        setViewBackgroundColor(view: viewOutlet)
    }
}
// MARK: - set view background color extention

extension ViewController {
    
    private func setViewBackgroundColor(view: UIView) {
        view.layer.backgroundColor = .init(srgbRed: CGFloat(redSlider.value)/255,
                                           green: CGFloat(greenSlider.value)/255,
                                           blue: CGFloat(blueSlider.value)/255,
                                           alpha: 1.0)
    }
}


