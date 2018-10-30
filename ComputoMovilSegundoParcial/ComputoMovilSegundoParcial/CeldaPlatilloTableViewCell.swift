//
//  CeldaPlatilloTableViewCell.swift
//  ComputoMovilSegundoParcial
//
//  Created by Usuario invitado on 30/10/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit

class CeldaPlatilloTableViewCell: UITableViewCell {

    @IBOutlet weak var imagePlatillo: UIImageView!
    
    @IBOutlet weak var nombrePlatilloLabel: UILabel!
    
    func setCell(platillo: Platillo) {
        imagePlatillo.image = platillo.imagen
        nombrePlatilloLabel.text = platillo.nombre
    }
    

}
