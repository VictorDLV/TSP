//
//  ViewController.swift
//  Navegation
//
//  Created by Usuario invitado on 24/9/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segueSwitch: UISwitch!
    
    @IBAction func segueButton(_ sender: Any) {
        if segueSwitch.isOn{
            performSegue(withIdentifier: "Green" , sender: nil)
        }
        else{
        performSegue(withIdentifier: "Yellow", sender: nil)
    }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToRed(unwindSegue : UIStoryboardSegue){
        
    }
   
}

