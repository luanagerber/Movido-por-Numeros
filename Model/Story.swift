//
//  Story.swift
//
//
//  Created by Luana Gerber on 15/03/24.
//


import SwiftUI

struct Story {
    let storyText : String
    let storyImage : [String]
    
    init(text: String, image: [String]) {
        storyText = text
        storyImage = image
    }
}

let predefinedStories: [Story] = [
    Story(text: "Deixa eu me apresentar melhor! Sou Eduardo um adolescente tímido, curioso e apaixonado pela vida. Gosto muito de cozinhar, de viajar e de passar tempo com meus amigos.", image: ["edu2_1", "edu2_2"]),
    Story(text: "Mas com tantas paixões e alternativas, não sei muito bem que caminho profissional seguir. A dúvida martela minha cabeça. Você já passou por isso?", image: ["blankSpace"]),
    Story(text: "Eu decidi que vou participar das olimpíadas de matemática da minha escola. Não tenho muita fé de vencer, mas meus amigos vão participar também, então acho que vai ser algo divertido!", image: ["blankSpace"]),
    Story(text: "Você não vai acreditar! Não apenas vencemos, como também conquistamos a etapa seguinte em Taiwan. Inclusive fomos parar nas olimpíadas de matemática da China! Que incrível!", image: ["edu3_1", "edu3_2"]),
    Story(text: "Eu nunca me esquecerei dessa experiência marcante. Começo a pensar que talvez os números possam me dar sorte e ser um caminho profissional a seguir. Mas qual exatamente?", image: ["blankSpace"]),
    Story(text: "Enquanto não tenho a resposta, vou expandir meus horizontes e fazer um intercâmbio para o Canadá. Sair da zona de conforto é importante para amadurecer, certo? Eu preciso disso!", image: ["blankSpace"]),
    Story(text: "Ir para o Canadá foi uma decisão certeira! Fui para lá sozinho, sem conhecer ninguém e tive a oportunidade de mergulhar em uma cultura nova! Isso definitivamente me transformou!", image: ["blankSpace"]),
    Story(text: "Superar os desafios do intercâmbio me tornou mais seguro de mim e confiante. Já me vejo mais maduro: não sou mais um menino, sou agora um jovem adulto!", image: ["edu5_1", "edu5_2", "edu5_3"]),
    Story(text: "De volta ao Brasil, sinto que é hora de transformar minha aptidão por números em uma carreira concreta. Vou me dedicar aos estudos e prestar vestibular. Consegue adivinhar para qual curso?", image: ["blankSpace"]),
    Story(text: "Depois de muitos estudos e dedicação, anuncio que sou o mais novo calouro de Ciência da Computação da UFAM. E as novidades não param por aí!", image: ["edu4_1", "edu4_2"]),
    Story(text: "Também sou o mais novo aluno da Developer Academy no Instituto Eldorado. Quantas vitórias, nem consigo acreditar! Estou imensamente feliz e ansioso pela carreira que construirei!", image: ["blankSpace"]),
    Story(text: "Meu futuro profissional não me assusta mais. O que vou encontrar daqui pra frente pode até ser desconhecido, mas estou confiante de que terei uma jornada incrível!", image: ["blankSpace"])
]
