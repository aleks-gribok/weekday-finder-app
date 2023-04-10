//
//  ViewController.swift
//  Weekday Finder
//
//  Created by  Aleksandr on 29.12.2022.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var day: UITextField!
    @IBOutlet weak var month: UITextField!
    @IBOutlet weak var year: UITextField!
    @IBOutlet weak var result: UILabel!
    
    @IBAction func button(_ sender: UIButton) {
        guard let daY = day.text, let montH = month.text, let yeaR = year.text else { return }
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.day = Int(daY)
        dateComponents.month = Int(montH)
        dateComponents.year = Int(yeaR)
        
        let dateFormat = DateFormatter()
        dateFormat.locale = Locale(identifier: "ru_RU")
        dateFormat.dateFormat = "EEEE"
        
        guard let date = calendar.date(from: dateComponents) else { return }
        let weekday = dateFormat.string(from: date).capitalized
        result.text = weekday
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

