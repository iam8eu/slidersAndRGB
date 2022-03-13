//
//  ViewController.swift
//  slidersAndRGB
//
//  Created by mac on 13.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 10
        
        sliderRedAction()
        sliderGreenAction()
        sliderBlueAction()
        
        sliderRed.minimumTrackTintColor = .red
        sliderGreen.minimumTrackTintColor = .green
        sliderBlue.minimumTrackTintColor = .blue
        
    }

    
    @IBAction func sliderRedAction() {
        changeRGBColor()
        redLabel.text = String(round(sliderRed.value * 100) / 100)
    }
    
    @IBAction func sliderGreenAction() {
        changeRGBColor()
        greenLabel.text = String(round(sliderGreen.value * 100) / 100)
    }

    @IBAction func sliderBlueAction() {
        changeRGBColor()
        blueLabel.text = String(round(sliderBlue.value * 100) / 100)
    }
    
    private func changeRGBColor() {
        
        let RGBColor = UIColor(
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value),
            alpha: CGFloat(1.0)
        )
        
        colorView.backgroundColor = RGBColor
        
    }
    
}

