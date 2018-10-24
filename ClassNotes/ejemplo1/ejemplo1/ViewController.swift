//
//  ViewController.swift
//  ejemplo1
//
//  Created by Macbook on 10/22/18.
//  Copyright © 2018 iosdevlab. All rights reserved.
//

import UIKit

class ViewController: UIViewController,ImageDownloaderDelegate {


    @IBOutlet weak var activitiIndicator: UIActivityIndicatorView!
    @IBOutlet weak var loadingLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var imageDownloader : ImageDownloader?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.isHidden = true
        loadingLabel.isHidden = true
        //let imageUrl : String = "https://k60.kn3.net/taringa/9/5/2/C/1/3/rodrigobenitez58/668.jpg"
        let imageUrl : String = "https://media1.tenor.com/images/ebd1e9be7635c9deb3e74c287f10473e/tenor.gif"
        
        imageDownloader = ImageDownloader(imageUrl: imageUrl)
        imageDownloader?.delegate = self
        imageDownloader?.downLoadImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func didFinishDownload(_ sender: ImageDownloader) {
        imageView.image = sender.image
        imageView.isHidden = false
        activitiIndicator.isHidden = true
        loadingLabel.isHidden = false
        loadingLabel.text = "The galaxy !"
    }
    
}

