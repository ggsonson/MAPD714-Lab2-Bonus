//
//  ViewController.swift
//  Lab2
//
//  Created by Man Nok Pun on 2022-10-19.
//

import UIKit

class DatePickerViewController: UIViewController {

    @IBOutlet weak var DatePickerControl: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        let date = NSDate()
        DatePickerControl.setDate(date as Date, animated: false)
    }

    @IBAction func SelectButtonPressed(_ sender: UIButton) {
        print(DatePickerControl.date)
    }
    
}

