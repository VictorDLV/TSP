//
//  GastronomiaViewController.swift
//  ComputoMovilSegundoParcial
//
//  Created by Usuario invitado on 29/10/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit

class GastronomiaViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var imagenDetalle: UIImageView!
    @IBOutlet weak var nombreDetalle: UILabel!
    @IBOutlet weak var detallesPlatillo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        platillos = createArrayPlatillos()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var platillos: [Platillo] = []
    
    func createArrayPlatillos() -> [Platillo] {
        
        var platillosLista: [Platillo] = []
        
        let plato1 = Platillo(imagen: #imageLiteral(resourceName: "mole"), nombre: "Mole", descripcion: "El mole es una de las delicias Prehispánicas más reconocidas en el mundo por su delicado aroma e intenso sabor – resultado de la mezcla de muchas especias junto a ingredientes fundamentales, que aportan la consistencia y tersura a la salsa. Es uno de los platillos más representativos, de la fusión de culturas y cocinas , que se ha dado en México.")
        let plato2 = Platillo(imagen: #imageLiteral(resourceName: "tlayuda"), nombre: "Tlayudas", descripcion: "La palabra tlayuda proviene del náhuatl tlao-li, que significa “maíz desgranado”, más el sufijo español uda “abundancia”. Las tlayudas son una tortilla de maíz de unos 30 centímetros o más; se cuece el tiempo necesario para que el agua se evapore, lo que le da la consistencia quebradiza y correosa. Es típica de la región del Valle Central de Oaxaca, donde suele prepararse con asiento de puerco -manteca-, quesillo, frijoles, tasajo asado –cecina-, aguacate y salsa, aunque en esta región se sirve espolvoreada de azúcar, sobre todo por las noches.")
        let plato3 = Platillo(imagen: #imageLiteral(resourceName: "tamal"), nombre: "Tamales", descripcion: "Tradicionalmente elaborados con masa de maíz y envueltos en hoja de plátano u hoja de maíz (aunque son menos comunes). Generalmente de cerdo o de pollo con mole negro, pueden ser también de carne de iguana,rellenos de mole amarillo y chipilin.")
        
        platillosLista.append(plato1)
        platillosLista.append(plato2)
        platillosLista.append(plato3)
        
        return platillosLista
        
    }
    
    func  tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return platillos.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let currentPlatillo = platillos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! CeldaPlatilloTableViewCell
        
        cell.setCell(platillo: currentPlatillo)
        
        return cell
    }
    
    func platilloSeleccionado(_ tabla: UITableView) -> Int {

    }
    
}
