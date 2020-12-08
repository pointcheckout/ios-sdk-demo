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
        PointCheckoutClient.pay(controller: self, paymentUrl: txtCheckoutKey.text!,resultUrl:"sameer://sameer/redirect", delegate: self)
    }
    
    func onPaymentUpdate(){
        print("UPDATE WAS CALLED")
    }
    
    func onPaymentCancel(){
        print("CANCEL WAS CALLED")
    }
}


