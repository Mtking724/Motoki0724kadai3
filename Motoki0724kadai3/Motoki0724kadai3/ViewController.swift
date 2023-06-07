//
//  ViewController.swift
//  Motoki0724kadai3
//
//  Created by Motoki Okayasu on 2023/05/28.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var mySwitch1: UISwitch!
    @IBOutlet weak var mySwitch2: UISwitch!
    @IBOutlet weak var numberLabel1: UILabel!
    @IBOutlet weak var signLabel: UILabel!
    @IBOutlet weak var numberLabel2: UILabel!
    @IBOutlet weak var culculatedResult: UILabel!
    
    @IBAction func tapButton(_ sender: UIButton) {
        //teXtFieldにInt型を入れる
        let value1 = Int(textField1.text ?? "") ?? 0
        let value2 = Int(textField2.text ?? "") ?? 0
        
        //switchのonofで切り替える
        let process1 = mySwitch1.isOn ? -value1 : value1
        let process2 = mySwitch2.isOn ? -value2 : value2

        numberLabel1.text = String(process1)
        numberLabel2.text = String(process2)
        culculatedResult.text = String(process1 + process2)
    }
}
