//
//  SettingViewController.swift
//  Tipper
//
//  Created by 陈卓娅 on 12/31/16.
//  Copyright © 2016 Sophia Zhuoya Chen. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBAction func onTap2(_ sender: Any) {
        view.endEditing(true)
    }
    @IBOutlet weak var picker1: UIPickerView!
    
    @IBOutlet weak var money: UILabel!
    
    @IBOutlet weak var dollarText: UITextField!
    
    var answer = 0
    
    var Array = ["RMB￥", "GBP￡", "EUR€","CAD$"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        picker1.delegate = self
        picker1.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Array[row]
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Array.count
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }

    
    @IBAction func submit(_ sender: Any) {
        let usd = Double(dollarText.text!) ?? 0

        
        if (answer == 0) {
            money.text = String(format: "￥%.2f", usd*6.95)
        }
            
        else if(answer == 1) {
             money.text = String(format: "￡%.2f", usd*0.8115)
        }
        else if (answer == 2) {
            money.text = String(format: "€%.2f", usd*0.9511)
        }
        else {
            money.text = String(format: "C$%.2f", usd*1.3280)
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        answer = row
    }
    
    @IBAction func changeDollar(_ sender: Any) {
        let usd = Double(dollarText.text!) ?? 0
        
        
        if (answer == 0) {
            money.text = String(format: "￥%.2f", usd*6.95)
        }
            
        else if(answer == 1) {
            money.text = String(format: "￡%.2f", usd*0.8115)
        }
        else if (answer == 2) {
            money.text = String(format: "€%.2f", usd*0.9511)
        }
        else {
            money.text = String(format: "C$%.2f", usd*1.3280)
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
