//
//  ViewController.swift
//  RGBHomeWork
//
//  Created by Александр on 20.08.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorMixView: UIView!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSliders()
        changeLabetText()
    }
    
    override func viewWillLayoutSubviews() {
        colorMixView.layer.cornerRadius = colorMixView.frame.width / 2
        colorMixView.layer.borderWidth = 5
        colorMixView.layer.borderColor = UIColor.yellow.cgColor
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        
        changeLabetText()
        
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        colorMixView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
    
    private func changeLabetText() {
        redValueLabel.text = String(NSString(format:"%.2f", redSlider.value))
        greenValueLabel.text = String(NSString(format:"%.2f", greenSlider.value))
        blueValueLabel.text = String(NSString(format:"%.2f", blueSlider.value))
    }
    
    private func setupSliders() {
        redSlider.minimumValue = 0
        greenSlider.minimumValue = 0
        blueSlider.minimumValue = 0
        
        redSlider.maximumValue = 1
        greenSlider.maximumValue = 1
        blueSlider.maximumValue = 1
        
        redSlider.value = 1
        greenSlider.value = 1
        blueSlider.value = 1
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
    }
}

