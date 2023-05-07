//
//  ViewController.swift
//  HinakkoKadai3
//
//  Created by 深来日菜 on 2023/05/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var leftResult: UILabel!
    @IBOutlet weak var rightResult: UILabel!
    @IBOutlet weak var finalResult: UILabel!
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!

    @IBAction func pushButton(_ sender: UIButton) {

        var leftValue = Int(textField1.text ?? "") ?? 0
        var rightValue = Int(textField2.text ?? "") ?? 0

        if switch1.isOn {
            leftResult.text = String("\(leftValue)")
        } else {
            leftValue *= -1
            leftResult.text = String("\(leftValue)")
        }

        if switch2.isOn {
            rightResult.text = String("\(rightValue)")
        } else {
            rightValue *= -1
            rightResult.text = String("\(rightValue)")
        }
        finalResult.text = String(leftValue + rightValue)
      }
    }
