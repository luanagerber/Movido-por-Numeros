//
//  Chapters.swift
//
//
//  Created by Luana Gerber on 25/04/24.
//

import Foundation

struct Chapter {
    let chapterText : String
    let chapterTitle : String
    let chapterImage : [String]
    
    init(text: String, title: String,  image: [String]) {
        chapterText = text
        chapterTitle = title
        chapterImage = image
    }
}

let predefinedChapters: [Chapter] = [
    Chapter(text: "Capítulo 1", title: "tituloCap1_blue",  image: ["cap1_1", "cap1_2"]),
    Chapter(text: "Capítulo 2", title: "tituloCap2_blue",  image: ["cap2_1", "cap2_2"]),
    Chapter(text: "Capítulo 3", title: "tituloCap3_blue",  image: ["cap3_1", "cap3_2"]),
    Chapter(text: "Capítulo 4", title: "tituloCap4_blue",  image: ["cap4_1", "cap4_2"])
]
