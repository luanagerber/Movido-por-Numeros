//
//  Cover.swift
//
//
//  Created by Luana Gerber on 02/07/24.
//

import Foundation

struct Cover {
    let coverText : String
    let coverImage : [String]
    let coverButtonTitle : String
    
    init(text: String, image: [String], buttonTitle: String) {
        coverText = text
        coverImage = image
        coverButtonTitle = buttonTitle
    }
}

let predefinedCover: [Cover] = [
    Cover(text: "UM LIVRO INTERATIVO", image: ["capa1", "capa2", "capa3"], buttonTitle: "COMEÇAR")
]
