//
//  DatacardViewController.swift
//  FastPay
//
//  Created by Sawan Jha on 11/2/16.
//  Copyright © 2016 Sawkan Internet Private Limited. All rights reserved.
//

import UIKit

class DatacardViewController: UIViewController , UIPickerViewDelegate,UIPickerViewDataSource,SSRadioButtonControllerDelegate{

    
    
    var operatorData =  ["Airtel", "Reliance", "Jio", "Vodafone", "Idea"]
    var CircleData = ["Delhi/NCR", "Haryana", "Bihar", "Tamil Nadu", "UP"]
    
    var pickerOperator = UIPickerView()
    
    var pickerCircle = UIPickerView()
    
    
    
    let inputContainerViews: UIView = {
        
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        
        
        
        
        return view
    }()
    
    
    
    let DatacardNumber:UITextField = {
        let mn = UITextField()
        mn.placeholder = "DataCard Number"
        mn.font =  UIFont(name: "San Francisco Text", size: 20)
        mn.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        return mn
        
        
        
        
    }()
    let dnSeperatorLine:UIView = {
        
        let esline = UIView()
        esline.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)

        esline.translatesAutoresizingMaskIntoConstraints = false
        
        return esline
    }()
    
    let selectYourProvider:UITextField = {
        let syn = UITextField()
        syn.placeholder = "Select Operator"
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
    
    
    
    
    let prepaidpostpaidView: UIView = {
        
        let view = UIView()
        view.backgroundColor = UIColor.white
        
        
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        
        
        
        
        return view
    }()
    
    var radioButtonController: SSRadioButtonsController?
    
    
    let chooseprepaid:SSRadioButton = {
        let mn = SSRadioButton()
        
        mn.setTitle("Prepaid", for: .normal)
        mn.setTitleColor(UIColor.init(red: 208/255, green: 208/255, blue: 213/255, alpha: 1), for: .normal)
        mn.titleLabel?.font = UIFont(name: "San Francisco Text", size: 20)
        mn.layer.cornerRadius = 5
        mn.layer.masksToBounds = true
        mn.translatesAutoresizingMaskIntoConstraints = false
        
        return mn
        
    }()
    
    
    let choosePostpaid:SSRadioButton = {
        let mn = SSRadioButton()
        
        mn.setTitle("Postpaid", for: .normal)
        mn.setTitleColor(UIColor.init(red: 208/255, green: 208/255, blue: 213/255, alpha: 1), for: .normal)
        mn.titleLabel?.font = UIFont(name: "San Francisco Text", size: 20)
        mn.layer.cornerRadius = 5
        mn.layer.masksToBounds = true
        mn.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        return mn
        
    }()
    let chooseprepaidpostpaidSeperatorLine:UIView = {
        
        let esline = UIView()
        esline.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        esline.translatesAutoresizingMaskIntoConstraints = false
        
        return esline
    }()
    
    
    
//    let selectServiceType:UITextField = {
//        let syn = UITextField()
//        syn.placeholder = "Connection Type"
//        syn.font =  UIFont(name: "San Francisco Text", size: 20)
//        syn.translatesAutoresizingMaskIntoConstraints = false
//        
//        return syn
//        
//        
//        
//        
//    }()
//    let selectServiceTypeSeperatorLine:UIView = {
//        
//        let esline = UIView()
//        esline.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
//
//        esline.translatesAutoresizingMaskIntoConstraints = false
//        
//        return esline
//    }()
//    
    
    let selectYourCircle:UITextField = {
        let syn = UITextField()
        syn.placeholder = "Circle"
        syn.font =  UIFont(name: "San Francisco Text", size: 20)
        syn.translatesAutoresizingMaskIntoConstraints = false
        
        return syn
        
        
        
        
    }()
    let selectYourCircleSeperatorLine:UIView = {
        
        let esline = UIView()
        esline.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)

        esline.translatesAutoresizingMaskIntoConstraints = false
        
        return esline
    }()
    
    
    
    
    
    let BillingAmount:UITextField = {
        let mn = UITextField()
        mn.placeholder = "Amount"
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
        pickerCircle.delegate = self
        pickerCircle.dataSource = self
        selectYourProvider.inputView = pickerOperator
        selectYourCircle.inputView = pickerCircle
        
        
        
        navigationItem.title = "Datacard"
        
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
        inputContainerViews.heightAnchor.constraint(equalToConstant: 250).isActive = true
        
        inputContainerViews.addSubview(DatacardNumber)
        inputContainerViews.addSubview(dnSeperatorLine)

        inputContainerViews.addSubview(selectYourProvider)
        
        inputContainerViews.addSubview(selectYourProviderSeperatorLine)
        
       // inputContainerViews.addSubview(selectServiceType)
       //inputContainerViews.addSubview(selectServiceTypeSeperatorLine)
       
        inputContainerViews.addSubview(selectYourCircle)
        inputContainerViews.addSubview(selectYourCircleSeperatorLine)
        inputContainerViews.addSubview(BillingAmount)
        
        setupDatacardNumber()
        setupselectYourProvider()
        setupdnSeperatorLine()
        setupselectYourProviderSeperatorLine()
        
        
        
        inputContainerViews.addSubview(prepaidpostpaidView)
        setupprepaidpostpaidView()
        
        inputContainerViews.addSubview(chooseprepaidpostpaidSeperatorLine)
        setupchooseprepaidpostpaidSeperatorLine()
        
       // setupselectServiceType()
       // setupselectServiceTypeSeperatorLine()
        setupselectYourCircle()
//        
        setupselectYourCircleSeperatorLine()
       setupBillingAmount()
    }
    
    
    func setupDatacardNumber() {
        
        DatacardNumber.leftAnchor.constraint(equalTo: inputContainerViews.leftAnchor, constant: 12).isActive = true
        DatacardNumber.topAnchor.constraint(equalTo: inputContainerViews.topAnchor).isActive = true
        
        DatacardNumber.widthAnchor.constraint(equalTo: inputContainerViews.widthAnchor).isActive = true
        
        DatacardNumber.heightAnchor.constraint(equalTo: inputContainerViews.heightAnchor, multiplier: 1/5).isActive = true
    }
    
    func setupdnSeperatorLine() {
        
        //layout contraints x, y, width, height
        
        dnSeperatorLine.leftAnchor.constraint(equalTo: inputContainerViews.leftAnchor).isActive = true
        dnSeperatorLine.topAnchor.constraint(equalTo: DatacardNumber.bottomAnchor).isActive = true
        
        dnSeperatorLine.widthAnchor.constraint(equalTo: inputContainerViews.widthAnchor).isActive = true
        
        dnSeperatorLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
    }
    
    func setupselectYourProvider() {
        
        
        selectYourProvider.leftAnchor.constraint(equalTo: inputContainerViews.leftAnchor, constant: 12).isActive = true
        selectYourProvider.topAnchor.constraint(equalTo: dnSeperatorLine.bottomAnchor).isActive = true
        
        selectYourProvider.widthAnchor.constraint(equalTo: inputContainerViews.widthAnchor).isActive = true
        
        selectYourProvider.heightAnchor.constraint(equalTo: inputContainerViews.heightAnchor, multiplier: 1/5).isActive = true
        
    }
    
    
    func setupselectYourProviderSeperatorLine() {
        
        //layout contraints x, y, width, height
        
        selectYourProviderSeperatorLine.leftAnchor.constraint(equalTo: inputContainerViews.leftAnchor).isActive = true
        selectYourProviderSeperatorLine.topAnchor.constraint(equalTo: selectYourProvider.bottomAnchor).isActive = true
        
        selectYourProviderSeperatorLine.widthAnchor.constraint(equalTo: inputContainerViews.widthAnchor).isActive = true
        
        selectYourProviderSeperatorLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
    }
    
    
    
    func setupprepaidpostpaidView() {
        
        inputContainerViews.addSubview(chooseprepaid)
        inputContainerViews.addSubview(choosePostpaid)
        
        setupchooseprepaid()
        setupchoosePostpaid()
        
        
        prepaidpostpaidView.leftAnchor.constraint(equalTo: inputContainerViews.leftAnchor).isActive = true
        prepaidpostpaidView.topAnchor.constraint(equalTo: selectYourProviderSeperatorLine.bottomAnchor).isActive = true
        
        prepaidpostpaidView.widthAnchor.constraint(equalTo: inputContainerViews.widthAnchor).isActive = true
        
        prepaidpostpaidView.heightAnchor.constraint(equalTo: inputContainerViews.heightAnchor, multiplier: 1/5).isActive = true
        
        
        
    }
    
    
    
    func setupchooseprepaid() {
        chooseprepaid.leftAnchor.constraint(equalTo: prepaidpostpaidView.leftAnchor, constant: 12).isActive = true
        chooseprepaid.topAnchor.constraint(equalTo: selectYourProviderSeperatorLine.bottomAnchor).isActive = true
        
        chooseprepaid.widthAnchor.constraint(equalTo: prepaidpostpaidView.widthAnchor, multiplier: 1/2).isActive = true
        
        chooseprepaid.heightAnchor.constraint(equalTo: prepaidpostpaidView.heightAnchor).isActive = true
        
        
    }
    func setupchoosePostpaid() {
        choosePostpaid.rightAnchor.constraint(equalTo: prepaidpostpaidView.rightAnchor, constant: -12).isActive = true
        choosePostpaid.topAnchor.constraint(equalTo: selectYourProviderSeperatorLine.bottomAnchor).isActive = true
        
        choosePostpaid.widthAnchor.constraint(equalTo: prepaidpostpaidView.widthAnchor, multiplier: 1/2).isActive = true
        
        choosePostpaid.heightAnchor.constraint(equalTo: prepaidpostpaidView.heightAnchor).isActive = true
        
        
    }
    
    

//    
//    func setupselectServiceType() {
//        
//        
//        selectServiceType.leftAnchor.constraint(equalTo: inputContainerViews.leftAnchor, constant: 12).isActive = true
//        selectServiceType.topAnchor.constraint(equalTo: selectYourProviderSeperatorLine.bottomAnchor).isActive = true
//        
//        selectServiceType.widthAnchor.constraint(equalTo: inputContainerViews.widthAnchor).isActive = true
//        
//        selectServiceType.heightAnchor.constraint(equalTo: inputContainerViews.heightAnchor, multiplier: 1/5).isActive = true
//        
//    }
    
    
    func setupchooseprepaidpostpaidSeperatorLine() {
        
        //layout contraints x, y, width, height
        
        chooseprepaidpostpaidSeperatorLine.leftAnchor.constraint(equalTo: inputContainerViews.leftAnchor).isActive = true
        chooseprepaidpostpaidSeperatorLine.topAnchor.constraint(equalTo: prepaidpostpaidView.bottomAnchor).isActive = true
        
        chooseprepaidpostpaidSeperatorLine.widthAnchor.constraint(equalTo: inputContainerViews.widthAnchor).isActive = true
        
        chooseprepaidpostpaidSeperatorLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
    }
    
    func setupselectYourCircle() {
        
        
        selectYourCircle.leftAnchor.constraint(equalTo: inputContainerViews.leftAnchor, constant: 12).isActive = true
        selectYourCircle.topAnchor.constraint(equalTo: chooseprepaidpostpaidSeperatorLine.bottomAnchor).isActive = true
        
        selectYourCircle.widthAnchor.constraint(equalTo: inputContainerViews.widthAnchor).isActive = true
        
        selectYourCircle.heightAnchor.constraint(equalTo: inputContainerViews.heightAnchor, multiplier: 1/5).isActive = true
        
    }
    
    
    func setupselectYourCircleSeperatorLine() {
        
        //layout contraints x, y, width, height
        
        selectYourCircleSeperatorLine.leftAnchor.constraint(equalTo: inputContainerViews.leftAnchor).isActive = true
        selectYourCircleSeperatorLine.topAnchor.constraint(equalTo: selectYourCircle.bottomAnchor).isActive = true
        
        selectYourCircleSeperatorLine.widthAnchor.constraint(equalTo: inputContainerViews.widthAnchor).isActive = true
        
        selectYourCircleSeperatorLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
    }

    
    
    func setupBillingAmount() {
        BillingAmount.leftAnchor.constraint(equalTo: inputContainerViews.leftAnchor, constant: 12).isActive = true
        BillingAmount.topAnchor.constraint(equalTo: selectYourCircleSeperatorLine.bottomAnchor).isActive = true
        
        BillingAmount.widthAnchor.constraint(equalTo: inputContainerViews.widthAnchor).isActive = true
        
        BillingAmount.heightAnchor.constraint(equalTo: inputContainerViews.heightAnchor, multiplier: 1/5).isActive = true
        
        
    }
    
    
    func setupProceedToPayButton() {
        
        
        ProceedToPayButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        ProceedToPayButton.topAnchor.constraint(equalTo: inputContainerViews.bottomAnchor , constant: 12).isActive = true
        ProceedToPayButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20).isActive = true
        ProceedToPayButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        
    }
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        if pickerView == pickerOperator{
            return operatorData.count
        }
        else if pickerView == pickerCircle{
            return CircleData.count
        }
        
        return  1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == pickerOperator{
            return operatorData[row]
        }
        else if pickerView == pickerCircle{
            return CircleData[row]
        }
        return ""
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if pickerView == pickerOperator{
            
            selectYourProvider.text = operatorData[row]
        }
        else if pickerView == pickerCircle{
            
            selectYourCircle.text = CircleData[row]
            
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
}
