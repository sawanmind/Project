//
//  ProfileViewController.swift
//  FastPay
//
//  Created by Sawan Jha on 11/1/16.
//  Copyright © 2016 Sawkan Internet Private Limited. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {


    
    
    @IBOutlet weak var logout: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
        
       navigationItem.title = "Account"
        
    
        view.backgroundColor = UIColor(red: 232/255, green: 235/255, blue: 236/255, alpha: 1)
//        
//        logout.addTarget(self, action: #selector(logoutloginClicked), for: .touchUpInside)
//    
    }
    
//    func logoutloginClicked() {
//        
//        let vc = LoginPage()
//        navigationController?.pushViewController(vc, animated: true)
//        
//        
//    }

 
  
}
