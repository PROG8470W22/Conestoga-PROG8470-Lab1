//
//  ViewController.swift
//  PROG8470_Lab1
//
//  Created by Omas Abdullah on 2022-01-16.
//

import UIKit

class ViewController: UIViewController {
    
    var step = 1 {
        didSet {
            buttonStep.setTitle("Step = \(step)", for: .normal)
        }
    }
    var outputValue = 0 {
        didSet {
            labelOutput.text = String(outputValue)
        }
    }
    
    enum ChangeType {
        case add
        case subtract
    }
    
    func changeValue(change: ChangeType) {
        switch change {
        case .add:
            outputValue += step
        case .subtract:
            outputValue -= step
        }
    }

    @IBOutlet weak var buttonStep: UIButton!
    
    @IBOutlet weak var labelOutput: UILabel!
    
    @IBAction func touchUpInsideSubtractButton(_ sender: Any) {
        changeValue(change: .subtract)
    }

    @IBAction func touchUpInsideAddButton(_ sender: Any) {
        changeValue(change: .add)
    }
    
    @IBAction func touchUpInsideResetButton(_ sender: Any) {
        outputValue = 0
    }

    @IBAction func touchUpInsideStepButton(_ sender: Any) {
        step = step == 1 ? 2 : 1
    }
}

