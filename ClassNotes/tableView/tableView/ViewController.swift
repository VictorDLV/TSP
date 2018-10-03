//
//  ViewController.swift
//  tableView
//
//  Created by Usuario invitado on 3/10/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{
    
    var listaAlumnos : [String] = ["luis","fer","sabele","norma","iker"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaAlumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        //cell.backgroundColor = UIColor.red
        cell.textLabel?.text = listaAlumnos[indexPath.row]
        
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(indexPath.row)
        let celda = tableView.cellForRow(at: indexPath)
        celda?.accessoryType = .checkmark
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            listaAlumnos.remove(at: indexPath.row)
        }
        tableView.reloadData()
    }
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let shareAction = UIContextualAction(style: .normal, title: "Share") { (UIContextualAction, UIView, (Bool) -> Void) in
        }
        let swipeConfiguration =  UISwipeActionsConfiguration(actions: [shareAction])
        return swipeConfiguration
    }


}


