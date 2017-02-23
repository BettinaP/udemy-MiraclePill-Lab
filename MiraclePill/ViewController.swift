//
//  ViewController.swift
//  MiraclePill
//
//  Created by Mark Price on 7/10/16.
//  Copyright © 2016 Devslopes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var pillImageView: UIImageView!
    
    @IBOutlet weak var pillLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var dividerView: UIView!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var streetAddressLabel: UILabel!
    
    @IBOutlet weak var enterAddressTextField: UITextField!
    
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var enterCityTextField: UITextField!
    
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var countryLabel: UILabel!
    
    @IBOutlet weak var enterCountryTextField: UITextField!
    
    @IBOutlet weak var zipCodeLabel: UILabel!
    
    @IBOutlet weak var enterZipCodeTextField: UITextField!
    
    @IBOutlet weak var buyButton: UIButton!
    
    var stateSelectedTextField: UITextField!
    
    let states = ["Alabama","Alaska","Arizona", "Arkansas","California","Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota","Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        
        self.view.backgroundColor = UIColor.lightGray
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        countryLabel.isHidden = true
        enterCountryTextField.isHidden = true
        zipCodeLabel.isHidden = true
        enterZipCodeTextField.isHidden = true
        statePicker.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        stateSelectedTextField = UITextField(frame: CGRect(x: 0, y: 0, width: 0, height: 30.0))
        stateSelectedTextField.backgroundColor = UIColor.white
        self.view.addSubview(stateSelectedTextField)
        
        stateSelectedTextField.text = states[row]
        stateSelectedTextField.translatesAutoresizingMaskIntoConstraints = false
        stateSelectedTextField.leadingAnchor.constraint(equalTo: stateLabel.leadingAnchor).isActive = true 
        stateSelectedTextField.trailingAnchor.constraint(equalTo: stateLabel.trailingAnchor).isActive = true
        stateSelectedTextField.topAnchor.constraint(equalTo: stateLabel.bottomAnchor).isActive = true
    
        countryLabel.translatesAutoresizingMaskIntoConstraints = false
        countryLabel.leadingAnchor.constraint(equalTo: stateLabel.leadingAnchor).isActive = true
        countryLabel.trailingAnchor.constraint(equalTo: stateLabel.trailingAnchor).isActive = true
        countryLabel.topAnchor.constraint(equalTo: stateSelectedTextField.bottomAnchor, constant: 8.0).isActive = true
         
        statePickerBtn.isHidden = true
        statePicker.isHidden = true
        countryLabel.isHidden = false
        enterCountryTextField.isHidden = false
        zipCodeLabel.isHidden = false
        enterZipCodeTextField.isHidden = false
        
        
    }
    
    @IBAction func buyButtonPressed(_ sender: Any) {
        
        let successImageView = UIImageView()
        
        successImageView.image = UIImage(named: "successIndicator")
        self.view.addSubview(successImageView)
        
        successImageView.translatesAutoresizingMaskIntoConstraints = false
        successImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        successImageView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
        pillImageView.isHidden = true
        pillLabel.isHidden = true
        priceLabel.isHidden = true
        dividerView.isHidden = true
        fullNameLabel.isHidden = true
        enterNameTextField.isHidden = true
        streetAddressLabel.isHidden = true
        enterAddressTextField.isHidden = true
        cityLabel.isHidden = true
        enterCityTextField.isHidden = true
        stateLabel.isHidden = true
        stateSelectedTextField.isHidden = true
        countryLabel.isHidden = true
        enterCountryTextField.isHidden = true
        zipCodeLabel.isHidden = true
        enterZipCodeTextField.isHidden = true
        buyButton.isHidden = true         
    }
}

