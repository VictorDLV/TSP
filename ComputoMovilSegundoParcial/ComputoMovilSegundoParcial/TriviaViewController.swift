//
//  TriviaViewController.swift
//  ComputoMovilSegundoParcial
//
//  Created by Usuario invitado on 30/10/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit

class TriviaViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // las imagenes
    var mealsImageList : [String] = ["Mole","Tamal","Tlayudas","Mole","Tlayudas"]
    var questions : [String] = ["El significado de 'Tlayuda' quiere decir maiz reventado","Los tamales oaxaqueños son de Oaxaca","El mole negro de Oaxaca es uno de los mas famosos","Oaxaca esta al lado de Chihuahua","La hoja en la que se enviuelve el tamal es de papel Bond"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TriviaTableViewCell
        cell.mealImage.image = UIImage(named: (questions[indexPath.row] + ".jpg"))
        cell.nameMealLabel.text = questions[indexPath.row]
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
