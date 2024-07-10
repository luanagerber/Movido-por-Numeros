//
//  Intro.swift
//
//
//  Created by Luana Gerber on 02/06/24.
//

import Foundation

struct Intro {
    let introText : String
    let introImage : [String]
    let introButtonTitle : String
    
    init(text: String, image: [String], buttonTitle: String) {
        introText = text
        introImage = image
        introButtonTitle = buttonTitle
    }
}

let predefinedIntro: [Intro] = [
    Intro(text: "Olá! Eu sou o Eduardo, um adolescente buscando seu lugar no mundo. Me ajuda nessa jornada?", image: ["edu1_1", "edu1_2"], buttonTitle: "CLARO"),
    Intro(text: "Você acaba de embarcar na minha nave! Sabia que ela é movida por números? Sua missão é me ajudar a avançar na história, resolvendo uma equação a cada etapa. Do contrário, ficaremos sem combustível!", image: ["nave1", "nave2"], buttonTitle: "DEIXA COMIGO!")
]
