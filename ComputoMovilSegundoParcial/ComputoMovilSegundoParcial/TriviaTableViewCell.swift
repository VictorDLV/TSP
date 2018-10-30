//
//  TriviaTableViewCell.swift
//  ComputoMovilSegundoParcial
//
//  Created by Usuario invitado on 30/10/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit

class TriviaTableViewCell: UITableViewCell {

    @IBOutlet weak var mealImage: UIImageView!
    @IBOutlet weak var nameMealLabel: UILabel!
    @IBOutlet weak var triviaButton: UISwitch!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
