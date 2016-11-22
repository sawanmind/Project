//
//  HelpDeskViewController.swift
//  FastPay
//
//  Created by Sawan Jha on 11/6/16.
//  Copyright © 2016 Sawkan Internet Private Limited. All rights reserved.
//

import UIKit

class HelpDeskViewController: UIViewController {

    @IBOutlet weak var subject: UITextField!
    @IBOutlet weak var message: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "HelpDesk"
        view.backgroundColor = UIColor(red: 232/255, green: 235/255, blue: 236/255, alpha: 1)
        

     
    }
    

    @IBAction func send(_ sender: Any) {
    }
 
}
