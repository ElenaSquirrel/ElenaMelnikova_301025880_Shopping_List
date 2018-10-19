//
//  ConputerPartsViewController.swift
//  ElenaMelnikova_301025880_Shopping_List
//
//  Created by Elena Melnikova on 2018-10-18.
//  Copyright © 2018 Centennial College. All rights reserved.
//

import UIKit

class ConputerPartsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var computerPartsPicker: UIPickerView!
    private let computerPartsComponent = 0
    private let computerPartsQuantityComponent = 1
    
    private let characterComputerParts = [
        "Memory", "CPU", "Motherboards", "Fans", "Cases"]
    
    
    private let characterComputerPartsQuantity = [
        "1", "2", "3", "4", "5"]

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func savecomputerParts(_ sender: UIButton) {
        let row_computerParts = computerPartsPicker.selectedRow(inComponent: 0)
        let row_computerPartsQuantity = computerPartsPicker.selectedRow(inComponent: 1)
        
        let selected_computerParts =
            characterComputerParts[row_computerParts]
        let selected_computerPartsQuantity =
            characterComputerPartsQuantity[row_computerPartsQuantity]
        
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    func pickerView(_ pickerView: UIPickerView,
                    numberOfRowsInComponent component: Int) -> Int {
        if component == computerPartsComponent{
            return characterComputerParts.count
        } else {
            return characterComputerPartsQuantity.count
        }
    }
    
    // MARK: Picker Delegate Methods
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == computerPartsComponent {
            return characterComputerParts[row]
        } else {
            return characterComputerPartsQuantity[row]
        }
    }
    
}


