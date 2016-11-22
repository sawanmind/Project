//
//  LoginPageViewController.swift
//  FastPay
//
//  Created by Sawan Jha on 10/29/16.
//  Copyright © 2016 Sawkan Internet Private Limited. All rights reserved.
//



import UIKit

class LoginPage: UIViewController , UITextFieldDelegate{
    
    
    
    
    let inputContainerView: UIView = {
        
        let view = UIView()
        view.backgroundColor = UIColor.white
  

        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 3
        view.layer.masksToBounds = true
        
        
        
        
        return view
    }()
    
    
    let loginButton:UIButton = {
        
        let loginbtn = UIButton(type: .system)
        
        loginbtn.backgroundColor = UIColor(red: 202/255, green: 101/255, blue: 52/255, alpha: 1)
        loginbtn.setTitle("Sign in", for: .normal)
        loginbtn.setTitleColor(.white, for: .normal)
        loginbtn.titleLabel?.font = UIFont(name: "San Francisco Text", size: 24)
        loginbtn.layer.cornerRadius = 3
        loginbtn.layer.masksToBounds = true
        loginbtn.translatesAutoresizingMaskIntoConstraints = false
        
      
        
        
        
        return loginbtn
    }()
    
    let facebookButton:UIButton = {
        
        let loginbtn = UIButton(type: .system)
        
        loginbtn.backgroundColor = UIColor(red: 57/255, green: 90/255, blue: 146/255, alpha: 1)
        loginbtn.setTitle("Sign in with Facebook", for: .normal)
        loginbtn.setTitleColor(.white, for: .normal)
        loginbtn.titleLabel?.font = UIFont(name: "San Francisco Text", size: 24)
        loginbtn.layer.cornerRadius = 3
        loginbtn.layer.masksToBounds = true
        loginbtn.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        
        
        return loginbtn
    }()
    
    let googleButton:UIButton = {
        
        let loginbtn = UIButton(type: .system)
        
        loginbtn.backgroundColor = UIColor(red: 233/255, green: 47/255, blue: 48/255, alpha: 1)
        loginbtn.setTitle("Sign in with Google", for: .normal)
        loginbtn.setTitleColor(.white, for: .normal)
        loginbtn.titleLabel?.font = UIFont(name: "San Francisco Text", size: 24)
        loginbtn.layer.cornerRadius = 3
        loginbtn.layer.masksToBounds = true
        loginbtn.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        
        
        return loginbtn
    }()
    


    
    let emailTextField:UITextField = {
        
        let emailtf = UITextField()
        emailtf.placeholder = "E-mail address"
        emailtf.font =  UIFont(name: "San Francisco Text", size: 25)
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
    
    let forgetPasscodeButton:UIButton = {
        
        let fpButton = UIButton()
       
        fpButton.setTitle("Forgotten Passcode?", for: .normal)
        fpButton.setTitleColor(UIColor.init(red: 127/255, green: 132/255, blue: 140/255, alpha: 1), for: .normal)
        fpButton.titleLabel?.font =  UIFont(name: "San Francisco Text", size: 12)
        fpButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        
        
        return fpButton
    }()
    
    let bottonseperatorLine:UIView = {
        
        let bottonseperatorLine = UIView()
        bottonseperatorLine.backgroundColor = UIColor(red: 127/255, green: 132/255, blue: 140/255, alpha: 1)
        bottonseperatorLine.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        return bottonseperatorLine
    }()


    
    let backgroundImage:UIImageView = {
        
        let bgImage = UIImageView()
        bgImage.contentMode = .scaleAspectFit
        bgImage.image  = UIImage(named: "bg.png")
        bgImage.translatesAutoresizingMaskIntoConstraints = false
        
       return bgImage
    }()
    
    let newheresignupButton:UIButton = {
        
        
        let signupButton = UIButton()
      
        signupButton.setTitle("New here? Sign Up", for: .normal)
        signupButton.setTitleColor(UIColor.init(red: 127/255, green: 132/255, blue: 140/255, alpha: 1), for: .normal)
        signupButton.titleLabel?.font =  UIFont(name: "San Francisco Text", size: 12)
        signupButton.translatesAutoresizingMaskIntoConstraints = false
        
        return signupButton
    }()
    

    
    
    let loginwithemailiconinTexFieldView: UIImageView = {
        let img = UIImageView()
        
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "Email.png")
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
        

    }()
    
    let loginwithemailiconinTexField: UIImageView = {
       let img = UIImageView()
        
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "Email.png")
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
        
    }()
    
    let loginwithpasswordiconinTexFieldView:UIImageView = {
        let img = UIImageView()
        
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "Password.png")
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
        
    }()
    
    let loginWithEmailLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Login with Email ID & Passcode"
        label.font = UIFont(name: "San Francisco Text", size: 12)
        label.textColor = UIColor.white
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
   
      // view.backgroundColor = UIColor(red: 65/255, green: 123/255, blue: 159/255, alpha: 1)
   
        view.addSubview(backgroundImage)
        view.addSubview(inputContainerView)
        view.addSubview(loginButton)
        view.addSubview(facebookButton)
        view.addSubview(googleButton)
        view.addSubview(loginPageLogo)
        view.addSubview(forgetPasscodeButton)
        view.addSubview(bottonseperatorLine)

        view.addSubview(newheresignupButton)
        
      //  view.addSubview(loginWithEmailLabel)
       
        
        setupbgImage()
        setupLoginButton()
        setupFacebookButton()
        setupGoogleButton()
        setupinputContainerView()
        setupLoginPageLogo()
        setupforgetPasscodeButton()
        setupbottonseperatorLine()

        setupnewheresignupButton()
       // setuploginWithEmailLabel()
        
        
        newheresignupButton.addTarget(self, action: #selector(newsignupClicked), for: .touchUpInside)
        

      
        
        
    }
    
    func newsignupClicked() {
        
   let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "registerpage") as! RegisterPageViewController
        self.present(controller, animated: true, completion: nil)
        
        
        

    }
    
    
    func setuploginWithEmailLabel() {
        loginWithEmailLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        loginWithEmailLabel.topAnchor.constraint(equalTo: loginPageLogo.bottomAnchor, constant: 40).isActive = true
        loginWithEmailLabel.widthAnchor.constraint(equalToConstant: 240).isActive = true
 
        loginWithEmailLabel.heightAnchor.constraint(equalToConstant: 24).isActive = true

    
    }
    
    
    
    func setupnewheresignupButton() {
        
        
        
        
        newheresignupButton.leftAnchor.constraint(equalTo: forgetPasscodeButton.rightAnchor, constant: -10).isActive = true
        
       
        newheresignupButton.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -35).isActive = true
        newheresignupButton.widthAnchor.constraint(equalToConstant: 168).isActive = true
        newheresignupButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
    }
    
    

    
    func setupbottonseperatorLine() {
        bottonseperatorLine.leftAnchor.constraint(equalTo: forgetPasscodeButton.rightAnchor).isActive = true
        bottonseperatorLine.topAnchor.constraint(equalTo: newheresignupButton.bottomAnchor).isActive = true
        bottonseperatorLine.widthAnchor.constraint(equalTo: newheresignupButton.widthAnchor, constant: -20).isActive = true
       // bottonseperatorLine.leftAnchor.constraint(equalTo: forgetPasscodeButton.rightAnchor, constant: 213).isActive = true
        bottonseperatorLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        


    }
    
    func setupbgImage() {
        
        backgroundImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        backgroundImage.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        backgroundImage.widthAnchor.constraint(equalTo: view.widthAnchor, constant: 41).isActive = true
        backgroundImage.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
        
    }
    
    
    func setupLoginPageLogo() {
        
        loginPageLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginPageLogo.centerYAnchor.constraint(equalTo: inputContainerView.topAnchor, constant: -130 ).isActive = true
        loginPageLogo.widthAnchor.constraint(equalToConstant: 95).isActive = true
        loginPageLogo.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
    }
    
    func setupLoginButton() {
        
        
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.bottomAnchor.constraint(equalTo: facebookButton.topAnchor , constant: -50).isActive = true
        loginButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -56).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        
    }
    
    
    func setupFacebookButton() {
        
        
        facebookButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        facebookButton.bottomAnchor.constraint(equalTo: googleButton.topAnchor , constant: -15).isActive = true
        facebookButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -56).isActive = true
        facebookButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        
    }
    
    
    
    func setupGoogleButton() {
        
        
        googleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        googleButton.bottomAnchor.constraint(equalTo: forgetPasscodeButton.topAnchor , constant: -20).isActive = true
        googleButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -56).isActive = true
        googleButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        
    }
    
    
    
    func setupforgetPasscodeButton() {
        
        //forgetPasscodeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        forgetPasscodeButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 3).isActive = true
        forgetPasscodeButton.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -35).isActive = true
        forgetPasscodeButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        forgetPasscodeButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
    }
    
    
    func setupinputContainerView(){
        
        
        //layout contraints x, y, width, height
        
        inputContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputContainerView.bottomAnchor.constraint(equalTo: loginButton.topAnchor, constant: -15).isActive = true
        
        inputContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -56).isActive = true
        inputContainerView.heightAnchor.constraint(equalToConstant: 115).isActive = true

     
        //email textfield will display under container view
        
        inputContainerView.addSubview(emailTextField)
        inputContainerView.addSubview(emailSeperatorLine)
        inputContainerView.addSubview(passwordTextField)
        
        //layout contraints x, y, width, height
        
        setupemailTextField()
        setupemailSeperatorLine()
        
        setuppasswordTextField()
        
    }
    
    func setupemailTextField() {
        
        
        emailTextField.addSubview(loginwithemailiconinTexFieldView)
         setuploginwithemailiconinTexFieldView()
        emailTextField.leftAnchor.constraint(equalTo: loginwithemailiconinTexFieldView.rightAnchor, constant: 12).isActive = true
        emailTextField.topAnchor.constraint(equalTo: inputContainerView.topAnchor).isActive = true
        
        emailTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        
        emailTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/2).isActive = true
        

        
    }
    
    func setuploginwithpasswordiconinTexFieldView() {
        
        loginwithpasswordiconinTexFieldView.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor,constant: 7).isActive = true
        loginwithpasswordiconinTexFieldView.topAnchor.constraint(equalTo: passwordTextField.topAnchor , constant: 13).isActive = true
      
        
        loginwithpasswordiconinTexFieldView.widthAnchor.constraint(equalToConstant: 25).isActive  = true
        loginwithpasswordiconinTexFieldView.heightAnchor.constraint(equalToConstant: 25).isActive  = true
        
    }
    
    func setuploginwithemailiconinTexFieldView() {
        
        loginwithemailiconinTexFieldView.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor,constant: 7).isActive = true
        loginwithemailiconinTexFieldView.topAnchor.constraint(equalTo: emailTextField.topAnchor , constant: 15).isActive = true
    
        loginwithemailiconinTexFieldView.widthAnchor.constraint(equalToConstant: 25).isActive  = true
        loginwithemailiconinTexFieldView.heightAnchor.constraint(equalToConstant: 25).isActive  = true
        
    }
    func setupemailSeperatorLine() {
        
        //layout contraints x, y, width, height
        
        emailSeperatorLine.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        emailSeperatorLine.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        
        emailSeperatorLine.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        
        emailSeperatorLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
    }
    
    func setuppasswordTextField() {
        
        //layout contraints x, y, width, height
        
        inputContainerView.addSubview(loginwithpasswordiconinTexFieldView)
        setuploginwithpasswordiconinTexFieldView()
        
        passwordTextField.leftAnchor.constraint(equalTo: loginwithpasswordiconinTexFieldView.rightAnchor, constant: 12).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: emailSeperatorLine.topAnchor).isActive = true
        
        passwordTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        
        passwordTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/2).isActive = true
        
        
        
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
   
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
}



