//
//  TriviaViewController.swift
//  ComputoMovilSegundoParcial
//
//  Created by Usuario invitado on 10/29/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit

class TriviaViewController: UIViewController, UITableViewDataSource , UITableViewDelegate{
    
    var questions : [String] = ["¿1?","¿2?","¿3?","¿4?","¿5?"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        //cell.backgroundColor = UIColor.red
        cell.textLabel?.text = questions[indexPath.row]
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(indexPath.row)
        let celda = tableView.cellForRow(at: indexPath)
        celda?.accessoryType = .checkmark
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            questions.remove(at: indexPath.row)
        }
        tableView.reloadData()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
