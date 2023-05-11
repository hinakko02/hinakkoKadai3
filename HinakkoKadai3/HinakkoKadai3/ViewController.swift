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
    @IBOutlet weak var leftResultLabel: UILabel!
    @IBOutlet weak var rightResultLabel: UILabel!
    @IBOutlet weak var finalResult: UILabel!
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!

    @IBAction func pushButton(_ sender: UIButton) {

        let leftValue = Int(textField1.text ?? "") ?? 0
        let rightValue = Int(textField2.text ?? "") ?? 0

        let signedValue1: Int
        if switch1.isOn {
            signedValue1 = -leftValue
        } else {
            signedValue1 = leftValue
        }

        let signedValue2: Int
        if switch2.isOn {
            signedValue2 = -rightValue
        } else {
            signedValue2 = rightValue
        }

        leftResultLabel.text = String("\(signedValue1)")
        rightResultLabel.text = String("\(signedValue2)")
        finalResult.text = String(signedValue1 + signedValue2)
    }
}
