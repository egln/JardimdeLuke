//
//  Modelo.swift
//  Jardim de Luke
//
//  Created by egln on 08/05/22.
//

struct Plants{
    
    //Informaçoes card, usadas na table view
    let nomeCientifico: String
    let imagem: String
    let level: String
    
    //Informaçoes de jogo, usadas nas telas de jogo
    let nomePopular: String
    let familia: String
    let localidade: String
    let temperaturaMaxima: Int
    let temperaturaMinima: Int
    
    //Booleanos pra definir o estado do jogo
    var nivelDisponivel: Bool
    var nivelConcluido: Bool

}

