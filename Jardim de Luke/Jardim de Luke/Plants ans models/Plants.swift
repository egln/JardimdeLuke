//
//  Plants.swift
//  Jardim de Luke
//
//  Created by egln on 16/05/22.
//

var plants: [Plants] = [
    
    //Level 1 = Eugenia uniflora
    Plants(nomeCientifico: "Eugenia uniflora",
           imagem: "level1icon",
           level: "Level 1",
           nomePopular: "Pitangueira",
           familia: "Eugenia",
           localidade: "Brasil",
           temperaturaMaxima: 50,
           temperaturaMinima: 15,
           nivelDisponivel: true,
           nivelConcluido: false),
    
    //Level 2 = Epipremnum pinnatum
    Plants(nomeCientifico: "Epipremnum pinnatum",
           imagem: "level2icon",
           level: "Level 2",
           nomePopular: "Jiboia",
           familia: "Aracea",
           localidade: "Borneo",
           temperaturaMaxima: 50,
           temperaturaMinima: 5,
           nivelDisponivel: false,
           nivelConcluido: false),
     
    //Level 3 = Echinocactus grusonii
    Plants(nomeCientifico: "Echinocactus grusonii",
           imagem: "level3icon",
           level: "Level 3",
           nomePopular: "cacto bolinha",
           familia: "Echinocactus",
           localidade: "America",
           temperaturaMaxima: 55,
           temperaturaMinima: 10,
           nivelDisponivel: false,
           nivelConcluido: false),
     ]
