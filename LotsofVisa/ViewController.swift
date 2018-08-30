//
//  ViewController.swift
//  LotsofVisa
//
//  Created by Tedtya on 8/29/18.
//  Copyright © 2018 Tedtya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    
    @IBOutlet weak var lblH: UILabel!
    @IBOutlet weak var txtfNum1: UITextField!
        @IBOutlet weak var txtfSign: UITextField!
        @IBOutlet weak var txtfNum2: UITextField!
        @IBOutlet weak var txtFResult: UILabel!
        @IBOutlet weak var lblHistory: UITextView!
        var arrayHistory = [String]()
        var appendedString = [String]()
    
    
        
        func showAlertMessage(title: String, message: String ){
            let alertController = UIAlertController (title: title, message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
            
        }
        override func viewDidLoad() {
            super.viewDidLoad()
            
            
            
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            
            
        }
        @IBAction func btnCal(_ sender: Any) {
            
            let num1:Int? = Int(txtfNum1.text!) ?? 00
            let num2:Int? = Int(txtfNum2.text!) ?? 00
            let sign:String? = txtfSign.text
            var result:Int = 0;
            
            if num1 == nil || num2 == nil {
                showAlertMessage(title: "NONO", message: "GO BACK")
                
            }
            if sign == "+" {
                result = Int(num1! + num2!)
                txtFResult.text = String(result)
            } else if (sign == "-") {
                result = Int(num1! - num2!)
                txtFResult.text = String(result)
            } else if (sign == "x"){
                result = Int(num1! * num2!)
                txtFResult.text = String(result)
            } else if (sign == "/" ){
                result = Int(num1! / num2!)
                txtFResult.text = String(result)
            } else{
                showAlertMessage(title: "Enter Again, NO TEXT", message: "NICE NICE")
            }
            
            let historystring = "\(txtfNum1.text!)\(txtfSign.text!)\(txtfNum2.text!) = \(result)"
            txtFResult.text = historystring
            arrayHistory.append(historystring)

            
            
    }
    
//    func printHistory(){
//        for element in arrayHistory {
//            print(element, terminator: ",") // output 1 2 3 4 5
//            appendedString.append(element)
//
//
//        }
//    }
    
    @IBAction func history(_ sender: Any) {
//        print(arrayHistory)
        let newString = arrayHistory.joined(separator: ", ");
        lblH.text = newString
        
        
       
        
        
     
    }
    
    
}

