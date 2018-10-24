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
    var delegate:ImageDownloaderDelegate? // el delegado
    var imageUrl : String
    var image: UIImage?
    init(imageUrl : String){
        self.imageUrl = imageUrl
    }
    func downLoadImage(){
        // aqui voy a hacer todo para bajar la imagen
        DispatchQueue.global(qos: DispatchQoS.QoSClass.background).async {
            guard
                let imageUrlUnwrapped = URL(string: self.imageUrl),
                let imageData = NSData(contentsOf: imageUrlUnwrapped),
                let image = UIImage(data: imageData as Data)else {return}
                self.image = image
                print("image successful dowload")
                DispatchQueue.main.async {
                self.didDownLoadImage()
            }
        }
    }
    func didDownLoadImage(){
        // aqui hago una vez que se bajo la imagen
        print("Now, How change the poperties of the ViewController?")
        delegate?.didFinishDownload(self)
    }
}
