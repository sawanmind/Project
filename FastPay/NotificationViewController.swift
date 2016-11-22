//
//  NotificationViewController.swift
//  FastPay
//
//  Created by Sawan Jha on 11/1/16.
//  Copyright © 2016 Sawkan Internet Private Limited. All rights reserved.
//

import UIKit

class NotificationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 232/255, green: 235/255, blue: 236/255, alpha: 1)
        

      navigationItem.title = "Notification"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
