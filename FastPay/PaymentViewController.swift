//
//  PaymentMethodTypeViewController.swift
//  FastPay
//
//  Created by MacBook Pro on 16/11/16.
//  Copyright © 2016 Sawkan Internet Private Limited. All rights reserved.
//

import UIKit

class PaymentViewController: UIViewController , UITextFieldDelegate{
    
    let inputContainerView: UIScrollView = {
        
        let view = UIScrollView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.showsVerticalScrollIndicator = true
        view.alwaysBounceVertical = true
        view.isScrollEnabled = true
        view.layer.cornerRadius = 2
        view.layer.masksToBounds = true
        view.isPagingEnabled = true
        return view
    }()
    
    let payNowButton: UIButton = {
       let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = UIColor.black
        btn.layer.cornerRadius = 2
        btn.layer.masksToBounds = true
        btn.setTitle("Pay now", for: .normal)
        return btn
    }()
    

    
    let namecardType: UITextField = {
       let crt = UITextField()
        crt.placeholder = "Name on Card"
        crt.translatesAutoresizingMaskIntoConstraints = false
        crt.borderStyle = .roundedRect
        
        return crt
        
    }()

    
    let cardnumber: UITextField = {
        let crt = UITextField()
        crt.placeholder = "Card Number"
        crt.translatesAutoresizingMaskIntoConstraints = false
        crt.borderStyle = .roundedRect
        
        return crt
        
    }()
    let expiryDate: UITextField = {
        let crt = UITextField()
        crt.placeholder = "MM / YY"
        crt.translatesAutoresizingMaskIntoConstraints = false
        crt.borderStyle = .roundedRect
        
        return crt
        
    }()
    
    
    let cvvNumber: UITextField = {
        let crt = UITextField()
        crt.placeholder = "CVV"
        crt.translatesAutoresizingMaskIntoConstraints = false
        crt.borderStyle = .roundedRect
        
        return crt
        
    }()
    

    override  func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        navigationItem.title = "Pay with a card"
        view.addSubview(inputContainerView)
        setupInputContainerView()
        view.addSubview(payNowButton)
        setupPayNowButton()
        
    }
    
    func setupInputContainerView () {
       
        inputContainerView.addSubview(namecardType)
        setupnamecardType()
      
        inputContainerView.addSubview(cardnumber)
        setupcardnumber()
        
        inputContainerView.addSubview(expiryDate)
        setupexpiryDate()
        
        inputContainerView.addSubview(cvvNumber)
        setupcvvNumber()
        
        
        inputContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        inputContainerView.widthAnchor.constraint(equalTo: view.widthAnchor,constant: -10).isActive = true
        inputContainerView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        
    }
    
    func setupPayNowButton() {
        payNowButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        payNowButton.topAnchor.constraint(equalTo: inputContainerView.bottomAnchor, constant: 20).isActive = true
        payNowButton.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        payNowButton.heightAnchor.constraint(equalToConstant: 46).isActive = true
        
        
    }
    
  
    func setupnamecardType() {
        namecardType.centerXAnchor.constraint(equalTo: inputContainerView.centerXAnchor).isActive = true
        namecardType.topAnchor.constraint(equalTo: inputContainerView.topAnchor,constant: 2).isActive = true
        namecardType.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor,constant: -2).isActive = true
        namecardType.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
    }
  
    func  setupcardnumber(){
        cardnumber.centerXAnchor.constraint(equalTo: inputContainerView.centerXAnchor).isActive = true
        cardnumber.topAnchor.constraint(equalTo: namecardType.bottomAnchor, constant: 10).isActive = true
        cardnumber.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor,constant: -2).isActive = true
        cardnumber.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
    }
    func setupexpiryDate() {
        expiryDate.centerXAnchor.constraint(equalTo: inputContainerView.centerXAnchor).isActive = true
        expiryDate.topAnchor.constraint(equalTo: cardnumber.bottomAnchor,constant: 10).isActive = true
        expiryDate.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor,constant: -2).isActive = true
        expiryDate.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
    }
    
    func  setupcvvNumber(){
        cvvNumber.centerXAnchor.constraint(equalTo: inputContainerView.centerXAnchor).isActive = true
        cvvNumber.topAnchor.constraint(equalTo: expiryDate.bottomAnchor, constant: 10).isActive = true
        cvvNumber.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor,constant: -2).isActive = true
        cvvNumber.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
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
