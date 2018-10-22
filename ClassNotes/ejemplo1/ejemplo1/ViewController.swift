//
//  ViewController.swift
//  ejemplo1
//
//  Created by Macbook on 10/22/18.
//  Copyright © 2018 iosdevlab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var activitiIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var loadingLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.isHidden = true
        loadingLabel.isHidden = true
        let imageUrl : String = "https://k60.kn3.net/taringa/9/5/2/C/1/3/rodrigobenitez58/668.jpg"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

