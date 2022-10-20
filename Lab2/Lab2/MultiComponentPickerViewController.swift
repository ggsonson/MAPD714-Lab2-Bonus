//
//  MultiComponentPickerViewController.swift
//  Lab2
//
//  Created by Man Nok Pun on 2022-10-19.
//

import UIKit

class MultiComponentPickerViewController: UIViewController,
                                            UIPickerViewDelegate, UIPickerViewDataSource
{

    @IBOutlet weak var MultiPicker: UIPickerView!
   
    let FirstNameArray = ["Mary", "Tiffany", "Gloria", "Zoe"]
    let MiddleNameArray = ["Christina", "Moonie", "Tracy", "Chris"]
    let LastNameArray = ["James", "Evans", "Johanson", "Hiddleston"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch(component) {
        case ColumnIndex.FirstName.rawValue: return FirstNameArray[row]
        case ColumnIndex.MiddleName.rawValue: return MiddleNameArray[row]
        case ColumnIndex.LastName.rawValue: return LastNameArray[row]
        default: return ""
        }
    }

    // number of columns
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    // number of rows
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 4
    }
    
    @IBAction func SelectButtonPressed(_ sender: UIButton) {
        
        let firstName = FirstNameArray[MultiPicker.selectedRow(inComponent: ColumnIndex.FirstName.rawValue)]
        let middleName = MiddleNameArray[MultiPicker.selectedRow(inComponent: ColumnIndex.MiddleName.rawValue)]
        let lastName = LastNameArray[MultiPicker.selectedRow(inComponent: ColumnIndex.LastName.rawValue)]
        print("Hello \(firstName) \(middleName) \(lastName) !" )
        
        
    }
}
