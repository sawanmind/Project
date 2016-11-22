//
//  VOIPViewController.swift
//  FastPay
//
//  Created by Sawan Jha on 11/2/16.
//  Copyright © 2016 Sawkan Internet Private Limited. All rights reserved.
//

import UIKit

class VOIPViewController: UIViewController , UITextFieldDelegate, UIPickerViewDelegate,UIPickerViewDataSource{
    
    
     var operatorData =  ["Airtel", "Reliance", "Jio", "Vodafone", "Idea"]
    
    var pickerOperator = UIPickerView()
    
    let inputContainerViews: UIView = {
        
        let view = UIView()
        view.backgroundColor = UIColor.white
        
        
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        
        
        
        
        return view
    }()
    
    
    
    let ID:UITextField = {
        let mn = UITextField()
        mn.placeholder = "Viewing Card Number"
        mn.font =  UIFont(name: "San Francisco Text", size: 20)
        mn.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        return mn
        
        
        
        
    }()
    let IDSeperatorLine:UIView = {
        
        let esline = UIView()
        esline.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        esline.translatesAutoresizingMaskIntoConstraints = false
        
        return esline
    }()
    
    let selectYourProvider:UITextField = {
        let syn = UITextField()
        syn.placeholder = "Operator"
        syn.font =  UIFont(name: "San Francisco Text", size: 20)
        syn.translatesAutoresizingMaskIntoConstraints = false
        
        return syn
        
        
        
        
    }()
    let selectYourProviderSeperatorLine:UIView = {
        
        let esline = UIView()
        esline.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)

        esline.translatesAutoresizingMaskIntoConstraints = false
        
        return esline
    }()
    
    
    
    
    let BillingAmount:UITextField = {
        let mn = UITextField()
        mn.placeholder = " Amount"
        mn.font =  UIFont(name: "San Francisco Text", size: 20)
        mn.translatesAutoresizingMaskIntoConstraints = false
        
        return mn
        
        
        
        
    }()
    
    let ProceedToPayButton:UIButton = {
        
        let loginbtn = UIButton(type: .system)
        
        loginbtn.backgroundColor = UIColor(red: 255/255, green: 45/255, blue: 85/255, alpha: 1)
        loginbtn.setTitle("Proceed To Pay", for: .normal)
        loginbtn.setTitleColor(.white, for: .normal)
        loginbtn.titleLabel?.font = UIFont(name: "San Francisco Text", size: 24)
        loginbtn.layer.cornerRadius = 5
        loginbtn.layer.masksToBounds = true
        loginbtn.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        
        
        return loginbtn
    }()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerOperator.delegate = self
        pickerOperator.dataSource = self
        
        selectYourProvider.inputView = pickerOperator
        
        navigationItem.title = "VOIP"
        
        view.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)

        view.addSubview(inputContainerViews)
        view.addSubview(ProceedToPayButton)
        setupProceedToPayButton()
        setupinputContainerView()
        
        
        
    }
    
    
    
    func setupinputContainerView(){
        
        
        //layout contraints x, y, width, height
        
        inputContainerViews.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputContainerViews.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        
        inputContainerViews.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20).isActive = true
        inputContainerViews.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        inputContainerViews.addSubview(ID)
        inputContainerViews.addSubview(selectYourProvider)
        
        inputContainerViews.addSubview(IDSeperatorLine)
        inputContainerViews.addSubview(selectYourProviderSeperatorLine)
        inputContainerViews.addSubview(BillingAmount)
        
        setupID()
        setupselectYourProvider()
        setupIDSeperatorLine()
        setupselectYourProviderSeperatorLine()
        
        setupBillingAmount()
    }
    
    
    func setupID() {
        
        ID.leftAnchor.constraint(equalTo: inputContainerViews.leftAnchor, constant: 12).isActive = true
        ID.topAnchor.constraint(equalTo: inputContainerViews.topAnchor).isActive = true
        
        ID.widthAnchor.constraint(equalTo: inputContainerViews.widthAnchor).isActive = true
        
        ID.heightAnchor.constraint(equalTo: inputContainerViews.heightAnchor, multiplier: 1/3).isActive = true
    }
    
    func setupIDSeperatorLine() {
        
        //layout contraints x, y, width, height
        
        IDSeperatorLine.leftAnchor.constraint(equalTo: inputContainerViews.leftAnchor).isActive = true
        IDSeperatorLine.topAnchor.constraint(equalTo: ID.bottomAnchor).isActive = true
        
        IDSeperatorLine.widthAnchor.constraint(equalTo: inputContainerViews.widthAnchor).isActive = true
        
        IDSeperatorLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
    }
    
    func setupselectYourProvider() {
        
        
        selectYourProvider.leftAnchor.constraint(equalTo: inputContainerViews.leftAnchor, constant: 12).isActive = true
        selectYourProvider.topAnchor.constraint(equalTo: IDSeperatorLine.bottomAnchor).isActive = true
        
        selectYourProvider.widthAnchor.constraint(equalTo: inputContainerViews.widthAnchor).isActive = true
        
        selectYourProvider.heightAnchor.constraint(equalTo: inputContainerViews.heightAnchor, multiplier: 1/3).isActive = true
        
    }
    
    
    func setupselectYourProviderSeperatorLine() {
        
        //layout contraints x, y, width, height
        
        selectYourProviderSeperatorLine.leftAnchor.constraint(equalTo: inputContainerViews.leftAnchor).isActive = true
        selectYourProviderSeperatorLine.topAnchor.constraint(equalTo: selectYourProvider.bottomAnchor).isActive = true
        
        selectYourProviderSeperatorLine.widthAnchor.constraint(equalTo: inputContainerViews.widthAnchor).isActive = true
        
        selectYourProviderSeperatorLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
    }
    
    
    
    func setupBillingAmount() {
        BillingAmount.leftAnchor.constraint(equalTo: inputContainerViews.leftAnchor, constant: 12).isActive = true
        BillingAmount.topAnchor.constraint(equalTo: selectYourProviderSeperatorLine.bottomAnchor).isActive = true
        
        BillingAmount.widthAnchor.constraint(equalTo: inputContainerViews.widthAnchor).isActive = true
        
        BillingAmount.heightAnchor.constraint(equalTo: inputContainerViews.heightAnchor, multiplier: 1/3).isActive = true
        
        
    }
    
    
    func setupProceedToPayButton() {
        
        
        ProceedToPayButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        ProceedToPayButton.topAnchor.constraint(equalTo: inputContainerViews.bottomAnchor , constant: 12).isActive = true
        ProceedToPayButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20).isActive = true
        ProceedToPayButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return operatorData.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return operatorData[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectYourProvider.text = operatorData[row]
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
    
}
