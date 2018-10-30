//
//  File.swift
//  ComputoMovilSegundoParcial
//
//  Created by Usuario invitado on 30/10/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import Foundation
import UIKit

struct Platillo {
    var imagen: UIImage
    var nombre: String
    var descripcion: String
    
    init(imagen: UIImage, nombre: String, descripcion: String) {
        self.imagen = imagen
        self.nombre = nombre
        self.descripcion = descripcion
    }
}
