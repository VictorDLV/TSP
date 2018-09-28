//
//  Sing.swift
//  RPS
//
//  Created by Usuario invitado on 28/9/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//
import GameplayKit
import Foundation

// creamos los numeros aleatorios
let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)
// aqui se cre los enum para el RPS
enum Sing{
    case rock
    case paper
    case scissors
    // creamos la propiedad calculada para los emojis
    var sings: String{
        switch self {
        case .rock:
            return "👊🏻"
        case .paper:
            return "🖐🏻"
        case .scissors:
            return "✌🏻"
        }
}
}
// funcion que genera el random
func randomSing()-> Sing {
    let numberAleatory = randomChoice.nextInt()
    switch numberAleatory {
    case 0:
        return .rock
    case 1:
        return .paper
    default:
        return .scissors
    }
 
}
// instanciamos el metodo que evalua la eleccion del jugador y de la app
func game(_ player: Sing) -> GameState{
    switch player {
    case .rock:
        if player == randomSing(){
            return .draw
        }else if randomSing() == .paper{
            return .lose
        }else if randomSing() == .scissors{
            return .win
        }
        
    case .paper:
        if player == randomSing(){
            return .draw
        }else if randomSing() == .rock{
            return .win
        }else if randomSing() == .scissors{
            return .lose
        }
    case .scissors:
        if player == randomSing(){
            return .draw
        }else if randomSing() == .rock{
            return .lose
        }else if randomSing() == .paper{
            return .win
        }

    }
    return .start
}

