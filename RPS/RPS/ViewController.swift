//
//  ViewController.swift
//  RPS
//
//  Created by Usuario invitado on 28/9/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //agregamos la llamada al metodo update UI
        //updateUI(.start)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
// outleds
    @IBOutlet weak var appSign: UILabel!
    @IBOutlet weak var statusOfGame: UILabel!
    @IBOutlet weak var rockSing: UIButton!
    @IBOutlet weak var paperSign: UIButton!
    @IBOutlet weak var scissorsSign: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    
    // actions
    @IBAction func playAgain(_ sender: Any) {
        // agregamos la llamada al metodo update ui para cuando pushe el boton playAgain
        updateUI(.start)
    }
    
    @IBAction func rock(_ sender: Any) {
        play(.rock)
        rockSing.isEnabled = true
        paperSign.isEnabled = false
        scissorsSign.isEnabled = false
        playAgainButton.isHidden = true
        appSign.text = "\(randomSing())"
        
    }
    
    @IBAction func paper(_ sender: Any) {
        play(.paper)
        rockSing.isEnabled = false
        paperSign.isEnabled = true
        scissorsSign.isEnabled = false
        playAgainButton.isHidden = true
        appSign.text = "\(randomSing())"
        
    }
    
    @IBAction func scissors(_ sender: Any) {
        play(.scissors)
        rockSing.isEnabled = false
        paperSign.isEnabled = false
        scissorsSign.isEnabled = true
        playAgainButton.isHidden = true
        appSign.text = "\(randomSing())"
        
    }
    // agregamos el metodo para actualiar la UI
    func updateUI(_ state: GameState) {
        switch state {
        case .start:
            statusOfGame.text = "Rock, Paper or Scissors?"
            appSign.text = "🤖"
            playAgainButton.isHidden = true
            rockSing.isEnabled = true
            rockSing.isHidden = true
            paperSign.isEnabled = true
            paperSign.isHidden = true
            scissorsSign.isEnabled = true
            scissorsSign.isHidden = true
        case .win:
            statusOfGame.text = "You Won!"
        case .draw:
            statusOfGame.text = "Draw"
        case .lose:
            statusOfGame.text = "Sorry, You Loses"

        }
    }
    // metodon"play" para los botones
    func play(_ sign : Sing) {
        updateUI(game(sign))
        
    }
}

