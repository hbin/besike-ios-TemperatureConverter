//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Bin Huang on 10/25/14.
//  Copyright (c) 2014 Bin Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var kelvinLabel: UILabel!
    @IBOutlet weak var temperatureSlider: UISlider!

    @IBAction func temperatureSliderChanged(sender: UISlider) {
        self.updateTemperatureDisplays()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//
//        let screen = UIScreen.mainScreen()
//        println("screen fixed bounds: \(screen.fixedCoordinateSpace.bounds)")
//        println("screen bounds: \(screen.bounds)")
//        println("top layout guide: \(topLayoutGuide.length)")
//
//        self.titleLabel.frame = CGRect(x: 16.0, y: 16.0, width: (screen.bounds.width - 32.0), height: 21)
//        self.titleLabel.textAlignment = NSTextAlignment.Center
//    }

    func updateTemperatureDisplays() {
        self.celsiusLabel.text = NSString(format: "%.2fC", self.temperatureSlider.value)
        self.fahrenheitLabel.text = NSString(format: "%.2fH", (self.temperatureSlider.value * 9 / 5) + 32)
        self.kelvinLabel.text = NSString(format: "%.2fK", self.temperatureSlider.value + 273.15)
    }
}

