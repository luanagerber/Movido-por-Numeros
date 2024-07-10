//
//  Final.swift
//
//
//  Created by Luana Gerber on 02/06/24.
//

import Foundation

struct Final {
    let finalText : String
    let finalImage : [String]
    let finalButtonTitle : String
    
    init(text: String, image: [String], buttonTitle: String) {
        finalText = text
        finalImage = image
        finalButtonTitle = buttonTitle
    }
}

let predefinedFinal: [Final] = [
    Final(text: "Obrigado por sua grande ajuda. Sem você não teria conseguido. Nos vemos numa próxima. Tchau!", image: ["final1", "final2"], buttonTitle: "Voltar ao Início")
]
