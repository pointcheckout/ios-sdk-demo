//
//  ViewController.swift
//  iossdkdemo
//
//  Created by Abdullah Asendar on 7/1/19.
//  Copyright © 2019 PointCheckout. All rights reserved.
//

import UIKit
import PointCheckoutSdk

class ViewController: UIViewController, PaymentDelegate{
    
    @IBOutlet weak var btnCheckout: UIButton!
    @IBOutlet weak var txtCheckoutKey: UITextField!
    var client = PointCheckoutClient(environment: PointCheckoutEnvironment.TEST)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func checkout(_ sender: UIButton) {
        client.pay(controller: self, checkoutKey: txtCheckoutKey.text ?? "", delegate: self)
    }
    
    func onUpdate(){
        print("UPDATE WAS CALLED")
    }
    
    func onDismiss(){
        print("CANCEL WAS CALLED")
    }
}


