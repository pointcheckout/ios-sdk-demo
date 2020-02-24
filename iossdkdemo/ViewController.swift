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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func checkout(_ sender: UIButton) {
        let client = PointCheckoutClient(environment: PointCheckoutEnvironment.TEST)
        client.setLanguage(iso2: "ar")
        client.pay(controller: self, checkoutKey: txtCheckoutKey.text!, delegate: self)
    }
    
    func onPaymentUpdate(){
        print("UPDATE WAS CALLED")
    }
    
    func onPaymentCancel(){
        print("CANCEL WAS CALLED")
    }
}


