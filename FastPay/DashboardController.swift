//
//  ViewController.swift
//  FastPay
//
//  Created by Sawan Jha on 10/29/16.
//  Copyright © 2016 Sawkan Internet Private Limited. All rights reserved.
//

import UIKit



class DashboardController: UIViewController , UIScrollViewDelegate{
    
    
    
   let inputContainerView: UIScrollView = {
    
        let view = UIScrollView()
        view.backgroundColor = UIColor.lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        view.showsVerticalScrollIndicator = true
        view.alwaysBounceVertical = true
        view.isScrollEnabled = true
        view.isPagingEnabled = true
    
        return view
    }()
    let mobileButton:UIButton = {
        
        let loginbtn = UIButton(type: .system)
        loginbtn.backgroundColor = UIColor(red: 87/255, green: 46/255, blue: 84/255, alpha: 1)
        loginbtn.setTitle("Mobile", for: .normal)
        loginbtn.setTitleColor(UIColor.white, for: .normal)
         loginbtn.translatesAutoresizingMaskIntoConstraints = false
       return loginbtn
    }()
   
   
    let electricityButton:UIButton = {
        
        let loginbtn = UIButton(type: .system)
        loginbtn.backgroundColor = UIColor(red: 105/255, green: 52/255, blue: 81/255, alpha: 1)
        loginbtn.setTitle("Electricity", for: .normal)
        loginbtn.setTitleColor(UIColor.white, for: .normal)
        loginbtn.translatesAutoresizingMaskIntoConstraints = false
        return loginbtn
    }()

    
    let datacardButton:UIButton = {
        
        let loginbtn = UIButton(type: .system)
        loginbtn.backgroundColor = UIColor(red: 179/255, green: 95/255, blue: 109/255, alpha: 1)
        loginbtn.setTitle("Datacard", for: .normal)
         loginbtn.setTitleColor(UIColor.white, for: .normal)
        loginbtn.titleLabel?.font = UIFont(name: "San Francisco Text", size: 24)
        loginbtn.translatesAutoresizingMaskIntoConstraints = false
        return loginbtn
    }()
    let landlineButton:UIButton = {
        
        let loginbtn = UIButton(type: .system)
         loginbtn.backgroundColor = UIColor(red: 225/255, green: 129/255, blue: 120/255, alpha: 1)
        loginbtn.setTitle("Landline", for: .normal)
         loginbtn.setTitleColor(UIColor.white, for: .normal)
        loginbtn.titleLabel?.font = UIFont(name: "San Francisco Text", size: 24)
         loginbtn.translatesAutoresizingMaskIntoConstraints = false
        return loginbtn
    }()
    

    let voipButton:UIButton = {
        
        let loginbtn = UIButton(type: .system)
         loginbtn.backgroundColor = UIColor(red: 255/255, green: 170/255, blue: 140/255, alpha: 1)
        loginbtn.setTitle("Voip", for: .normal)
         loginbtn.setTitleColor(UIColor.white, for: .normal)
        loginbtn.titleLabel?.font = UIFont(name: "San Francisco Text", size: 24)
        loginbtn.translatesAutoresizingMaskIntoConstraints = false
        return loginbtn
    }()
    

    let iptvButton:UIButton = {
        
        let loginbtn = UIButton(type: .system)
         loginbtn.backgroundColor = UIColor(red: 255/255, green: 106/255, blue: 89/255, alpha: 1)
        loginbtn.setTitle("Iptv", for: .normal)
         loginbtn.setTitleColor(UIColor.white, for: .normal)
        loginbtn.titleLabel?.font = UIFont(name: "San Francisco Text", size: 24)
        loginbtn.translatesAutoresizingMaskIntoConstraints = false
        return loginbtn
    }()
    
    let dthButton:UIButton = {
        
        let loginbtn = UIButton(type: .system)
         loginbtn.backgroundColor = UIColor(red: 255/255, green: 136/255, blue: 93/255, alpha: 1)
        loginbtn.setTitle("Dth", for: .normal)
         loginbtn.setTitleColor(UIColor.white, for: .normal)
        loginbtn.titleLabel?.font = UIFont(name: "San Francisco Text", size: 24)
         loginbtn.translatesAutoresizingMaskIntoConstraints = false
        return loginbtn
    }()
    
    
    let waterButton:UIButton = {
        
        let loginbtn = UIButton(type: .system)
         loginbtn.backgroundColor = UIColor(red: 255/255, green: 165/255, blue: 99/255, alpha: 1)
        
        loginbtn.setTitle("Water", for: .normal)
         loginbtn.setTitleColor(UIColor.white, for: .normal)
        loginbtn.titleLabel?.font = UIFont(name: "San Francisco Text", size: 24)
        loginbtn.translatesAutoresizingMaskIntoConstraints = false
        return loginbtn
    }()
    
    
    let gasButton:UIButton = {
        
        let loginbtn = UIButton(type: .system)
         loginbtn.backgroundColor = UIColor(red: 255/255, green: 192/255, blue: 102/255, alpha: 1)
        loginbtn.setTitle("Gas", for: .normal)
         loginbtn.setTitleColor(UIColor.white, for: .normal)
        loginbtn.titleLabel?.font = UIFont(name: "San Francisco Text", size: 24)
         loginbtn.translatesAutoresizingMaskIntoConstraints = false
       return loginbtn
    }()
    


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Dashboard"
                
      
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.plain, target: nil, action: nil)

        
        view.backgroundColor = UIColor(red: 232/255, green: 235/255, blue: 236/255, alpha: 1)
        
        mobileButton.addTarget(self, action: #selector(mobilebuttonClick), for: .touchUpInside)
        electricityButton.addTarget(self, action: #selector(electricitybuttonClicked), for: .touchUpInside)
        datacardButton.addTarget(self, action: #selector(datacardbuttonClicked), for: .touchUpInside)
        landlineButton.addTarget(self, action: #selector(landlinebuttonClicked), for: .touchUpInside)
        voipButton.addTarget(self, action: #selector(voipbuttonClicked), for: .touchUpInside)
        iptvButton.addTarget(self, action: #selector(iptvbuttonClicked), for: .touchUpInside)
        dthButton.addTarget(self, action: #selector(dthbuttonClicked), for: .touchUpInside)
        waterButton.addTarget(self, action: #selector(waterbuttonClicked), for: .touchUpInside)
        gasButton.addTarget(self, action: #selector(gasbuttonClicked), for: .touchUpInside)
        
      
        view.addSubview(inputContainerView)
        setupinputContainerView()
    }
  
    func setupinputContainerView(){
        
        inputContainerView.addSubview(mobileButton)
        setupMobileButton()
        
        inputContainerView.addSubview(electricityButton)
        setupelectricityButton()
        
        inputContainerView.addSubview(datacardButton)
       
        
        setdatacardButton()
        
        inputContainerView.addSubview(landlineButton)
        setuplandlineButton()
        
        inputContainerView.addSubview(voipButton)
        setupvoipButton()
        
        
        
        inputContainerView.addSubview(iptvButton)
        setupiptvButton()
        
        
        inputContainerView.addSubview(dthButton)
        setupdthButton()
        
        inputContainerView.addSubview(waterButton)
        setupwaterButton()
        
        
        
        inputContainerView.addSubview(gasButton)
        setupgasButton()
        
        
        inputContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
   
        inputContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        
        inputContainerView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        inputContainerView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
    }
    
  
    
   func mobilebuttonClick(_ sender: UIButton)  {
        let vc = MobileViewController()
        navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
   func  setupMobileButton() {
    
    
        mobileButton.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        mobileButton.topAnchor.constraint(equalTo: inputContainerView.topAnchor).isActive = true
        mobileButton.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor, multiplier: 1/2).isActive = true
        mobileButton.heightAnchor.constraint(equalToConstant: 140).isActive = true
    

    
    }
    
      func electricitybuttonClicked() {
        let vc = ElectricityViewController()
        navigationController?.pushViewController(vc, animated: true)
        

        
    }
    
    func  setupelectricityButton() {
        
        
   
        
        electricityButton.leftAnchor.constraint(equalTo: mobileButton.rightAnchor).isActive = true
        electricityButton.topAnchor.constraint(equalTo: inputContainerView.topAnchor).isActive = true
        electricityButton.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor, multiplier: 1/2).isActive = true
        electricityButton.heightAnchor.constraint(equalToConstant: 140).isActive = true
       
        
    }
  
    func datacardbuttonClicked(_ sender: UIButton) {
        
        let vc = DatacardViewController()
        navigationController?.pushViewController(vc, animated: true)
        

    }
    
    
     func setdatacardButton() {
        datacardButton.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        datacardButton.topAnchor.constraint(equalTo: mobileButton.bottomAnchor).isActive = true
        datacardButton.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor, multiplier: 1/2).isActive = true
        datacardButton.heightAnchor.constraint(equalToConstant: 140).isActive = true
        
       
        
   }
    
    func landlinebuttonClicked(_ sender: UIButton) {
        let vc = LandlineViewController()
        navigationController?.pushViewController(vc, animated: true)
        

        
    }
   func  setuplandlineButton() {
       landlineButton.leftAnchor.constraint(equalTo: datacardButton.rightAnchor).isActive = true
        landlineButton.topAnchor.constraint(equalTo: electricityButton.bottomAnchor).isActive = true
        landlineButton.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor, multiplier: 1/2).isActive = true
        landlineButton.heightAnchor.constraint(equalToConstant: 140).isActive = true
    
    
    
    }
    
    func voipbuttonClicked() {
        let vc = VOIPViewController()
        navigationController?.pushViewController(vc, animated: true)
        
 
        
    }
    
    func  setupvoipButton() {
        voipButton.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        voipButton.topAnchor.constraint(equalTo: datacardButton.bottomAnchor).isActive = true
        voipButton.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor, multiplier: 1/2).isActive = true
        voipButton.heightAnchor.constraint(equalToConstant: 140).isActive = true
        
        
        
    }
    func iptvbuttonClicked() {
        
        let vc = IPTVViewController()
        navigationController?.pushViewController(vc, animated: true)
        

    }
    
    
    func  setupiptvButton() {
        iptvButton.leftAnchor.constraint(equalTo: voipButton.rightAnchor).isActive = true
        iptvButton.topAnchor.constraint(equalTo: landlineButton.bottomAnchor).isActive = true
        iptvButton.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor, multiplier: 1/2).isActive = true
        iptvButton.heightAnchor.constraint(equalToConstant: 140).isActive = true
        
        
        
    }
    func dthbuttonClicked() {
        let vc = DTHViewController()
        navigationController?.pushViewController(vc, animated: true)
        

        
    }

    func  setupdthButton() {
        dthButton.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        dthButton.topAnchor.constraint(equalTo: voipButton.bottomAnchor).isActive = true
        dthButton.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor, multiplier: 1/2).isActive = true
        dthButton.heightAnchor.constraint(equalToConstant: 140).isActive = true
        
        
        
    }
    func waterbuttonClicked() {
        
        let vc = WaterViewController()
        navigationController?.pushViewController(vc, animated: true)
        

    }
    
    func  setupwaterButton() {
        waterButton.leftAnchor.constraint(equalTo: dthButton.rightAnchor).isActive = true
        waterButton.topAnchor.constraint(equalTo:iptvButton.bottomAnchor).isActive = true
        waterButton.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor, multiplier: 1/2).isActive = true
        waterButton.heightAnchor.constraint(equalToConstant: 140).isActive = true
        
        
        
    }
    func gasbuttonClicked() {
        let vc = GasViewController()
        navigationController?.pushViewController(vc, animated: true)
        

        
    }
    
    func  setupgasButton() {
        gasButton.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        gasButton.topAnchor.constraint(equalTo: dthButton.bottomAnchor).isActive = true
        gasButton.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor, multiplier: 1/2).isActive = true
        gasButton.heightAnchor.constraint(equalToConstant: 140).isActive = true

        }

    
}
