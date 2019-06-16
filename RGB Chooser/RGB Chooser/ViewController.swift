//
//  ViewController.swift
//  RGB Chooser
//
//  Created by kristhian deoliveira on 6/12/19.
//  Copyright © 2019 kristhian deoliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var RGBView: UIView!
    @IBOutlet weak var R: UISlider!
    @IBOutlet weak var G: UISlider!
    @IBOutlet weak var B: UISlider!
    @IBOutlet weak var A: UISlider!
    @IBOutlet weak var R_Label: UILabel!
    @IBOutlet weak var G_Label: UILabel!
    @IBOutlet weak var B_Label: UILabel!
    @IBOutlet weak var A_Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Slider_Min_Max()
        ColorViewStyle()
    }   
    func ColorViewStyle() -> Void {
        RGBView.layer.borderWidth = 1
        RGBView.layer.borderColor = RGBView.backgroundColor?.cgColor
        RGBView.layer.cornerRadius = 40
        R.thumbTintColor = .red
        G.thumbTintColor = .green
        B.thumbTintColor = .blue
        A.thumbTintColor = .black
    }
    func Slider_Min_Max() -> Void {
        R.value = 0.0
        G.value = 0.0
        B.value = 0.0
        A.value = 0.0
        R.minimumValue = 0.0
        R.maximumValue = 1.0
        G.minimumValue = 0.0
        G.maximumValue = 1.0
        B.minimumValue = 0.0
        B.maximumValue = 1.0
        A.minimumValue = 0.0
        A.maximumValue = 1.0
    }
    func colorUpdater() -> Void {
        let r = CGFloat(R.value)
        let g = CGFloat(G.value)
        let b = CGFloat(B.value)
        let a = CGFloat(A.value)
        RGBView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: a)
        R_Label.text = "\(R.value)"
        G_Label.text = "\(G.value)"
        B_Label.text = "\(B.value)"
        A_Label.text = "\(A.value)"
    }
    @IBAction func r(_ sender: Any) { colorUpdater() }
    @IBAction func g(_ sender: Any) { colorUpdater() }
    @IBAction func b(_ sender: Any) { colorUpdater() }
    @IBAction func a(_ sender: Any) { colorUpdater() }
}
