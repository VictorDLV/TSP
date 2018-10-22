//
//  ImageDownloader.swift
//  ejemplo1
//
//  Created by Macbook on 10/22/18.
//  Copyright © 2018 iosdevlab. All rights reserved.
//

import Foundation
import UIKit

class ImageDownloader {
    var imageUrl : String
    var image: UIImage?
    var view: ViewController
    init(imageUrl : String, view : ViewController){
        self.imageUrl = imageUrl
        self.view = view
    }
    func downLoadImage(){
        // aqui voy a hacer todo para bajar la imagen
        DispatchQueue.global(qos: DispatchQoS.QoSClass.background).async {
            guard
                let imageUrlUnwrapped = URL(string: self.imageUrl),
                let imageData = NSData(contentsOf: imageUrlUnwrapped),
                let image = UIImage(data: imageData as Data)else {return}
        }
    }
    func didDownLoadImage(){
        // aqui hago una vez que se bajo la imagen
    }
}
