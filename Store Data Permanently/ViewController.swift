//
//  ViewController.swift
//  Store Data Permanently
//
//  Created by Vinoth Vino on 15/05/17.
//  Copyright © 2017 CoderEarth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var phoneNumbLabel: UILabel!
    @IBOutlet var textField: UITextField!
    
    @IBAction func saveBtn(_ sender: Any) {
        
        let phNumb = textField?.text
        
        //Storing phone number with userphnumb key
        UserDefaults.standard.set(phNumb, forKey: "userphnumb")
        
        //Retrieving phone numbers
        if let retrievedNumb = UserDefaults.standard.object(forKey: "userphnumb") as? String{
            
             print(retrievedNumb)
             phoneNumbLabel.text = retrievedNumb
            
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let retrievedVal = UserDefaults.standard.object(forKey: "userphnumb") as? String{
            
            phoneNumbLabel.text = retrievedVal
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

