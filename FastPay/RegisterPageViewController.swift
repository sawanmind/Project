//
//  RegisterPageViewController.swift
//  FastPay
//
//  Created by Sawan Jha on 10/29/16.
//  Copyright © 2016 Sawkan Internet Private Limited. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController , UITextFieldDelegate{
    
    let inputContainerView: UIView = {
        
        let view = UIView()
        view.backgroundColor = UIColor.white
        // view.backgroundColor?.setFill() = false
        
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 3
        view.layer.masksToBounds = true
        
        
        
        
        return view
    }()
    
    
    let loginButton:UIButton = {
        
        let loginbtn = UIButton(type: .system)
        
        loginbtn.backgroundColor = UIColor(red: 0/255, green: 160/255, blue: 136/255, alpha: 1)
        loginbtn.setTitle("Sign Up", for: .normal)
        loginbtn.setTitleColor(.white, for: .normal)
        loginbtn.titleLabel?.font = UIFont(name: "San Francisco", size: 24)
        loginbtn.layer.cornerRadius = 3
        loginbtn.layer.masksToBounds = true
        loginbtn.translatesAutoresizingMaskIntoConstraints = false
        
        // loginbtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        
        
        
        return loginbtn
    }()
    
    
    let nameTextField:UITextField = {
        
        let nametf = UITextField()
        nametf.placeholder = "Full Name"
        nametf.font =  UIFont(name: "San Francisco Text", size: 12)
        nametf.translatesAutoresizingMaskIntoConstraints = false
        
        return nametf
        
    }()
    
    let nameSeperatorLine:UIView = {
        
        let nsline = UIView()
        nsline.backgroundColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1)
        nsline.translatesAutoresizingMaskIntoConstraints = false
        
        return nsline
    }()
    
    
    
    let mobileTextField:UITextField = {
        
        let mobiletf = UITextField()
        mobiletf.placeholder = "Contact No."
        mobiletf.font =  UIFont(name: "San Francisco Text", size: 20)
        mobiletf.translatesAutoresizingMaskIntoConstraints = false
        
        return mobiletf
        
    }()
    
    let mobileSeperatorLine:UIView = {
        
        let msline = UIView()
        msline.backgroundColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1)
        msline.translatesAutoresizingMaskIntoConstraints = false
        
        return msline
    }()
    
    
    
    let emailTextField:UITextField = {
        
        let emailtf = UITextField()
        emailtf.placeholder = "E-mail address"
        emailtf.font =  UIFont(name: "San Francisco Text", size: 20)
        emailtf.translatesAutoresizingMaskIntoConstraints = false
        
        return emailtf
        
    }()
    let passwordTextField:UITextField = {
        
        let passwordtf = UITextField()
        passwordtf.placeholder = "********"
        passwordtf.isSecureTextEntry = true
        passwordtf.font =  UIFont(name: "San Francisco Text", size: 20)
        passwordtf.translatesAutoresizingMaskIntoConstraints = false
        
        return passwordtf
        
    }()
    
    
    
    
    
    
    let emailSeperatorLine:UIView = {
        
        let esline = UIView()
        esline.backgroundColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1)
        esline.translatesAutoresizingMaskIntoConstraints = false
        
        return esline
    }()
    
    let loginPageLogo:UIImageView = {
        
        let lplogo = UIImageView()
        lplogo.contentMode = .scaleAspectFit
        
        lplogo.image = UIImage(named: "Screenshot.png")
        lplogo.translatesAutoresizingMaskIntoConstraints = false
        
        
        return lplogo
    }()
 
    
    
    
    let backgroundImage:UIImageView = {
        
        let bgImage = UIImageView()
        bgImage.contentMode = .scaleAspectFit
        bgImage.image  = UIImage(named: "bg.png")
        bgImage.translatesAutoresizingMaskIntoConstraints = false
        
        return bgImage
    }()
    
    let fullnameiconinTexField: UIImageView = {
        let img = UIImageView()
        
        
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "fullname.png")
       img.translatesAutoresizingMaskIntoConstraints = false
        return img
        
    }()
    
    let contacticoninTexFieldView:UIImageView = {
        let img = UIImageView()
        
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "mobile.png")
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
        
    }()
    let emailiconinTexField: UIImageView = {
        let img = UIImageView()
        
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "Email.png")
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
        
    }()
    
    let passwordiconinTexFieldView:UIImageView = {
        let img = UIImageView()
        
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "Password.png")
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
        
    }()
    
    
    let alreadyHaveanAccountLabel: UIButton = {
        
        let label = UIButton()
        label.setTitle("Have account? Sign in", for: .normal)
        //label. = UIFont(name: "San Francisco Text", size: 12)
        label.tintColor = UIColor.white
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // view.backgroundColor = UIColor(red: 65/255, green: 123/255, blue: 159/255, alpha: 1)
        
        view.addSubview(backgroundImage)
        view.addSubview(inputContainerView)
        view.addSubview(loginButton)
        view.addSubview(loginPageLogo)
        view.addSubview(alreadyHaveanAccountLabel)
        
      
        
        setupbgImage()
        setupLoginButton()
        setupinputContainerView()
        setupLoginPageLogo()
        setupalreadyHaveanAccountLabel()
        
        
        alreadyHaveanAccountLabel.addTarget(self, action: #selector(signinTapped), for: .touchUpInside)
    }
    
    func signinTapped() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "loginpage") as! LoginPage
        
        self.present(controller, animated: true, completion: nil)
        
        
    }
    
    func setupalreadyHaveanAccountLabel() {
        
       
        alreadyHaveanAccountLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        alreadyHaveanAccountLabel.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -35).isActive = true
        alreadyHaveanAccountLabel.widthAnchor.constraint(equalTo: loginButton.widthAnchor, constant: -55 ).isActive = true
        alreadyHaveanAccountLabel.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
    }


    func setupbgImage() {
        
        backgroundImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        backgroundImage.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        backgroundImage.widthAnchor.constraint(equalTo: view.widthAnchor, constant: 41).isActive = true
        backgroundImage.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
        
    }
    
    
    func setupLoginPageLogo() {
        
        loginPageLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginPageLogo.centerYAnchor.constraint(equalTo: inputContainerView.topAnchor, constant: -121 ).isActive = true
        loginPageLogo.widthAnchor.constraint(equalToConstant: 95).isActive = true
        loginPageLogo.heightAnchor.constraint(equalToConstant: 75).isActive = true
        
    }
    
    func setupLoginButton() {
        
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.topAnchor.constraint(equalTo: inputContainerView.bottomAnchor , constant: 15).isActive = true
        loginButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -56).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        
    }
    
   
    
    func setupinputContainerView(){
        
        
        //layout contraints x, y, width, height
        
        inputContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        inputContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -56).isActive = true
        inputContainerView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        
        //email textfield will display under container view
        inputContainerView.addSubview(nameTextField)
        inputContainerView.addSubview(nameSeperatorLine)
        inputContainerView.addSubview(mobileTextField)
        inputContainerView.addSubview(mobileSeperatorLine)
        inputContainerView.addSubview(emailTextField)
        inputContainerView.addSubview(emailSeperatorLine)
        inputContainerView.addSubview(passwordTextField)
      
                      
        
       
        
        //layout contraints x, y, width, height
        
         setupnameTextField()
    
        setupmobileTextField()
        setupemailTextField()
        setuppasswordTextField()
       
        
        
        
        
       
        
        //layout contraints x, y, width, height
        
        nameSeperatorLine.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        nameSeperatorLine.topAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive = true
        
        nameSeperatorLine.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        
        nameSeperatorLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        

        
       
        
        //layout contraints x, y, width, height
        
        mobileSeperatorLine.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        mobileSeperatorLine.topAnchor.constraint(equalTo: mobileTextField.bottomAnchor).isActive = true
        
        mobileSeperatorLine.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        
        mobileSeperatorLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        


       
        
        //layout contraints x, y, width, height
        
        emailSeperatorLine.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        emailSeperatorLine.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        
        emailSeperatorLine.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        
        emailSeperatorLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        
        
    }
    func setupnameTextField() {
        
    
        nameTextField.addSubview(fullnameiconinTexField)
        setupfullnameiconinTexField()
        
        nameTextField.leftAnchor.constraint(equalTo: fullnameiconinTexField.rightAnchor, constant: 12).isActive = true
        nameTextField.topAnchor.constraint(equalTo: inputContainerView.topAnchor).isActive = true
        
        nameTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        
        nameTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/4).isActive = true
        

        
    }
    
    func setupmobileTextField() {
        
       
        inputContainerView.addSubview(contacticoninTexFieldView)
        setupcontacticoninTexFieldView()

        
        //layout contraints x, y, width, height
        
        
        mobileTextField.leftAnchor.constraint(equalTo: contacticoninTexFieldView.rightAnchor, constant: 12).isActive = true
        mobileTextField.topAnchor.constraint(equalTo: nameSeperatorLine.bottomAnchor).isActive = true
        
        mobileTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        
        mobileTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/4).isActive = true
        
        
    }
    
    func setupemailTextField(){
        
        inputContainerView.addSubview(emailiconinTexField)
        setupemailiconinTexField()
        
        //layout contraints x, y, width, height
        
        
        emailTextField.leftAnchor.constraint(equalTo: emailiconinTexField.rightAnchor, constant: 12).isActive = true
        emailTextField.topAnchor.constraint(equalTo: mobileSeperatorLine.bottomAnchor).isActive = true
        
        emailTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        
        emailTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/4).isActive = true
        
        
    }
    
    
    func setuppasswordTextField(){
        
        inputContainerView.addSubview(passwordiconinTexFieldView)
        setuppasswordiconinTexFieldView()

        
        //layout contraints x, y, width, height
        
        
        passwordTextField.leftAnchor.constraint(equalTo: passwordiconinTexFieldView.rightAnchor, constant: 12).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: emailSeperatorLine.bottomAnchor).isActive = true
        
        passwordTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        
        passwordTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/4).isActive = true
        

        
    }
    
    
 

    
    func setuppasswordiconinTexFieldView() {
        
        passwordiconinTexFieldView.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor,constant: 7).isActive = true
        passwordiconinTexFieldView.topAnchor.constraint(equalTo: passwordTextField.topAnchor , constant: 10).isActive = true
        
        
        passwordiconinTexFieldView.widthAnchor.constraint(equalToConstant: 25).isActive  = true
        passwordiconinTexFieldView.heightAnchor.constraint(equalToConstant: 25).isActive  = true
        
    }
    
    func setupemailiconinTexField() {
        
        emailiconinTexField.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor,constant: 7).isActive = true
        emailiconinTexField.topAnchor.constraint(equalTo: emailTextField.topAnchor , constant: 10).isActive = true
        
        emailiconinTexField.widthAnchor.constraint(equalToConstant: 25).isActive  = true
        emailiconinTexField.heightAnchor.constraint(equalToConstant: 25).isActive  = true
        
    }
    func setupcontacticoninTexFieldView() {
        
        contacticoninTexFieldView.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor,constant: 7).isActive = true
        contacticoninTexFieldView.topAnchor.constraint(equalTo: mobileTextField.topAnchor , constant: 10).isActive = true
        
        contacticoninTexFieldView.widthAnchor.constraint(equalToConstant: 25).isActive  = true
        contacticoninTexFieldView.heightAnchor.constraint(equalToConstant: 25).isActive  = true
        
    }
    
    
    
    
    func setupfullnameiconinTexField() {
        fullnameiconinTexField.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor,constant: 7).isActive = true
        fullnameiconinTexField.topAnchor.constraint(equalTo: nameTextField.topAnchor , constant: 15).isActive = true
        
        fullnameiconinTexField.widthAnchor.constraint(equalToConstant: 25).isActive  = true
        fullnameiconinTexField.heightAnchor.constraint(equalToConstant: 25).isActive  = true    }

    

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
}



