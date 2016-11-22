//
//  MobileViewController.swift
//  FastPay
//
//  Created by Sawan Jha on 11/2/16.
//  Copyright © 2016 Sawkan Internet Private Limited. All rights reserved.
//

import UIKit

class MobileViewController: UIViewController , UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource,SSRadioButtonControllerDelegate{
    
    
    var operatorData =  ["Airtel", "Reliance", "Jio", "Vodafone", "Idea"]
    var CircleData = ["Delhi/NCR", "Haryana", "Bihar", "Tamil Nadu", "UP"]
    var pickerOperator = UIPickerView()
    var pickerCircle = UIPickerView()
    
    let inputContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        return view
    }()
  
    let mobilenumber:UITextField = {
        let mn = UITextField()
        mn.placeholder = "Mobile Number"
        mn.font =  UIFont(name: "San Francisco Text", size: 20)
        mn.translatesAutoresizingMaskIntoConstraints = false
        mn.layer.cornerRadius = 5
        mn.layer.masksToBounds = true
        return mn
    
    }()
    let mobilenumberImage:UIImageView = {
        let mn = UIImageView()
        mn.image = UIImage(named: "mobile.png")
        mn.translatesAutoresizingMaskIntoConstraints = false
        return mn
        
    }()
   
    let mobilenumberSeperatorLine:UIView = {
        let esline = UIView()
        esline.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        esline.translatesAutoresizingMaskIntoConstraints = false
        return esline
    }()

    let selectYourNetwork:UITextField = {
        let syn = UITextField()
        syn.placeholder = "Select Operator"
        syn.font =  UIFont(name: "San Francisco Text", size: 20)
        syn.translatesAutoresizingMaskIntoConstraints = false
        syn.layer.cornerRadius = 5
        syn.layer.masksToBounds = true
       return syn
       
    }()
    
    let selectYourNetworkImage:UIImageView = {
        let mn = UIImageView()
        mn.image = UIImage(named: "mobile.png")
        mn.translatesAutoresizingMaskIntoConstraints = false
        return mn
    }()
  
    let selectYourNetworkSeperatorLine:UIView = {
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

    let SelectYourCircle:UITextField = {
        let mn = UITextField()
        mn.placeholder = "Select Circle"
        mn.font =  UIFont(name: "San Francisco Text", size: 20)
        mn.translatesAutoresizingMaskIntoConstraints = false
        mn.layer.cornerRadius = 5
        mn.layer.masksToBounds = true
        return mn
     
    }()
    let SelectYourCircleImage:UIImageView = {
        let mn = UIImageView()
        mn.image = UIImage(named: "mobile.png")
        mn.translatesAutoresizingMaskIntoConstraints = false
        return mn
    }()
    
    let SelectYourCircleSeperatorLine:UIView = {
        let esline = UIView()
        esline.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        esline.translatesAutoresizingMaskIntoConstraints = false
        return esline
    }()

    let EnterAmount:UITextField = {
        let mn = UITextField()
        mn.placeholder = "Enter Amount"
        mn.font =  UIFont(name: "San Francisco Text", size: 20)
        mn.translatesAutoresizingMaskIntoConstraints = false
        mn.layer.cornerRadius = 5
        mn.layer.masksToBounds = true
        return mn
    }()
    let EnterAmountImage:UIImageView = {
        let mn = UIImageView()
        mn.image = UIImage(named: "mobile.png")
        mn.translatesAutoresizingMaskIntoConstraints = false
        return mn
    }()

    let ProceedToPayButton:UIButton = {
        let loginbtn = UIButton(type: .system)
        loginbtn.backgroundColor = UIColor(red: 65/255, green: 87/255, blue: 116/255, alpha: 1)
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
        selectYourNetwork.inputView = pickerOperator
        SelectYourCircle.inputView = pickerCircle
        ProceedToPayButton.addTarget(self, action: #selector(proceedToPaymentClicked), for: .touchUpInside)
        radioButtonController = SSRadioButtonsController(buttons: chooseprepaid,choosePostpaid)
        radioButtonController!.delegate = self
        radioButtonController!.shouldLetDeSelect = true
        navigationItem.title = "Mobile"
        view.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        view.addSubview(inputContainerView)
        view.addSubview(ProceedToPayButton)
        setupProceedToPayButton()
        setupinputContainerView()
    }
    
    func proceedToPaymentClicked() {
        let vc = PaymentViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    func setupinputContainerView(){
        inputContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        inputContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20).isActive = true
        inputContainerView.heightAnchor.constraint(equalToConstant: 250).isActive = true

        inputContainerView.addSubview(mobilenumber)
        setupmobileNumber()
        
        inputContainerView.addSubview(mobilenumberSeperatorLine)
        setupmobilenumberSeperatorLine()

        inputContainerView.addSubview(selectYourNetwork)
        setupselectYourNetwork()
        
        inputContainerView.addSubview(selectYourNetworkSeperatorLine)
        setupselectYourNetworkSeperatorLine()
   
        inputContainerView.addSubview(prepaidpostpaidView)
        setupprepaidpostpaidView()
        
        inputContainerView.addSubview(chooseprepaidpostpaidSeperatorLine)
        setupchooseprepaidpostpaidSeperatorLine()
       
        inputContainerView.addSubview(SelectYourCircle)
        setupSelectYourCircle()
        
        inputContainerView.addSubview(SelectYourCircleSeperatorLine)
        setupSelectYourCircleSeperatorLine()
        
        inputContainerView.addSubview(EnterAmount)
        setupEnterAmount()
   
    }
   
    func setupmobileNumber() {
        mobilenumber.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor,constant:12).isActive = true
        mobilenumber.topAnchor.constraint(equalTo: inputContainerView.topAnchor).isActive = true
        mobilenumber.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        mobilenumber.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/5).isActive = true
        }
    
    func setupmobilenumberSeperatorLine() {
        mobilenumberSeperatorLine.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        mobilenumberSeperatorLine.topAnchor.constraint(equalTo: mobilenumber.bottomAnchor).isActive = true
        mobilenumberSeperatorLine.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        mobilenumberSeperatorLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    func setupselectYourNetworkImage() {
        selectYourNetworkImage.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 5).isActive = true
        selectYourNetworkImage.topAnchor.constraint(equalTo: mobilenumberSeperatorLine.bottomAnchor, constant: 10).isActive = true
        selectYourNetworkImage.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor, multiplier: 1/12).isActive = true
        selectYourNetworkImage.heightAnchor.constraint(equalToConstant: 25).isActive = true
    }

    func setupselectYourNetwork() {
        selectYourNetwork.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
        selectYourNetwork.topAnchor.constraint(equalTo: mobilenumberSeperatorLine.bottomAnchor).isActive = true
        selectYourNetwork.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        selectYourNetwork.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/5).isActive = true
    }

    func setupselectYourNetworkSeperatorLine() {
        selectYourNetworkSeperatorLine.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        selectYourNetworkSeperatorLine.topAnchor.constraint(equalTo: selectYourNetwork.bottomAnchor).isActive = true
        selectYourNetworkSeperatorLine.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        selectYourNetworkSeperatorLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }

    func setupprepaidpostpaidView() {
        inputContainerView.addSubview(chooseprepaid)
        inputContainerView.addSubview(choosePostpaid)

        setupchooseprepaid()
        setupchoosePostpaid()
        
        prepaidpostpaidView.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        prepaidpostpaidView.topAnchor.constraint(equalTo: selectYourNetworkSeperatorLine.bottomAnchor).isActive = true
        prepaidpostpaidView.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        prepaidpostpaidView.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/5).isActive = true
    }

    func setupchooseprepaid() {
        chooseprepaid.leftAnchor.constraint(equalTo: prepaidpostpaidView.leftAnchor, constant: 12).isActive = true
        chooseprepaid.topAnchor.constraint(equalTo: selectYourNetworkSeperatorLine.bottomAnchor).isActive = true
        chooseprepaid.widthAnchor.constraint(equalTo: prepaidpostpaidView.widthAnchor, multiplier: 1/2).isActive = true
        chooseprepaid.heightAnchor.constraint(equalTo: prepaidpostpaidView.heightAnchor).isActive = true
    }
    func setupchoosePostpaid() {
        choosePostpaid.rightAnchor.constraint(equalTo: prepaidpostpaidView.rightAnchor, constant: -12).isActive = true
        choosePostpaid.topAnchor.constraint(equalTo: selectYourNetworkSeperatorLine.bottomAnchor).isActive = true
        choosePostpaid.widthAnchor.constraint(equalTo: prepaidpostpaidView.widthAnchor, multiplier: 1/2).isActive = true
        choosePostpaid.heightAnchor.constraint(equalTo: prepaidpostpaidView.heightAnchor).isActive = true
    }

    func setupchooseprepaidpostpaidSeperatorLine() {
        chooseprepaidpostpaidSeperatorLine.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        chooseprepaidpostpaidSeperatorLine.topAnchor.constraint(equalTo: prepaidpostpaidView.bottomAnchor).isActive = true
        chooseprepaidpostpaidSeperatorLine.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        chooseprepaidpostpaidSeperatorLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    func setupSelectYourCircleImage() {
        SelectYourCircleImage.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 5).isActive = true
        SelectYourCircleImage.topAnchor.constraint(equalTo: chooseprepaidpostpaidSeperatorLine.bottomAnchor, constant: 10).isActive = true
        SelectYourCircleImage.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor, multiplier: 1/12).isActive = true
        SelectYourCircleImage.heightAnchor.constraint(equalToConstant: 25).isActive = true
    }
    
    func setupSelectYourCircle() {
        SelectYourCircle.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
        SelectYourCircle.topAnchor.constraint(equalTo: chooseprepaidpostpaidSeperatorLine.bottomAnchor).isActive = true
        SelectYourCircle.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        SelectYourCircle.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/5).isActive = true
    }
    func setupSelectYourCircleSeperatorLine() {
        SelectYourCircleSeperatorLine.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        SelectYourCircleSeperatorLine.topAnchor.constraint(equalTo: SelectYourCircle.bottomAnchor).isActive = true
        SelectYourCircleSeperatorLine.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        SelectYourCircleSeperatorLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    func setupEnterAmountImage() {
        EnterAmountImage.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 5).isActive = true
        EnterAmountImage.topAnchor.constraint(equalTo: SelectYourCircleSeperatorLine.bottomAnchor, constant: 10).isActive = true
        EnterAmountImage.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor, multiplier: 1/12).isActive = true
        EnterAmountImage.heightAnchor.constraint(equalToConstant: 25).isActive = true
    }

    func setupEnterAmount() {
        EnterAmount.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
        EnterAmount.topAnchor.constraint(equalTo: SelectYourCircleSeperatorLine.bottomAnchor).isActive = true
        EnterAmount.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        EnterAmount.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/5).isActive = true
    }
    
    func setupProceedToPayButton() {
        ProceedToPayButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        ProceedToPayButton.topAnchor.constraint(equalTo: inputContainerView.bottomAnchor , constant: 30).isActive = true
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
        selectYourNetwork.text = operatorData[row]
        }
        else if pickerView == pickerCircle{
            SelectYourCircle.text = CircleData[row]
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
