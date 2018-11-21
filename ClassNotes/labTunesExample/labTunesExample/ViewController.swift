//
//  ViewController.swift
//  labTunesExample
//
//  Created by Usuario invitado on 11/21/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        MusicController.fetchMusic(search: "beatles") { (Items) in
            debugPrint(Items ?? "No items")
        }
        
    }


}

