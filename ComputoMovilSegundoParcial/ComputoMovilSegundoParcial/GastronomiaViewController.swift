//
//  GastronomiaViewController.swift
//  ComputoMovilSegundoParcial
//
//  Created by Usuario invitado on 29/10/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit

class GastronomiaViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var listaNombrePlatillos: [String] = ["Mole", "Tlayudas", "Tamales"]
    
    func  tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaNombrePlatillos.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        
        //cell.backgroundColor = UIColor.darkGray
        
        cell.textLabel?.text = listaNombrePlatillos[indexPath.row]
        
        return cell
    }
}
