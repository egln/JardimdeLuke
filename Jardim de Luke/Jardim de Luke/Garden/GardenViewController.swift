//
//  File.swift
//  Jardim de Luke
//
//  Created by egln on 08/05/22.
//
//

import UIKit

class GardenViewController: UIViewController {
    @IBOutlet weak var lukeImage: UIImageView!
    
    @IBOutlet weak var gramaView: UIView!
    
    //Coleta a hora para mudar o fundo
    var horas = (Calendar.current.component(.hour, from: Date()))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gramaView.backgroundColor = hexStringToUIColor(hex: "#89a68f")
        
        //Define a imagem de fundo de acordo com o estado do jogo
        if plants[0].nivelConcluido == false{
            lukeImage.image = UIImage(named: "husky-1")
        }
        else{
            lukeImage.image = UIImage(named: "husky-2")
        }
        
        //Arruma as cores de acordo com a hora do dia
        if (horas < 5){
            view.backgroundColor = hexStringToUIColor(hex: "#2B2E46")
        }
        else if (horas >= 5) && (horas <= 10) {
            view.backgroundColor = hexStringToUIColor(hex: "#FCFF55")
        }
        else if (horas > 10) && (horas <= 15){
            view.backgroundColor = hexStringToUIColor(hex: "#96ECFF")
        }
        else if (horas > 15) && (horas <= 17){
            view.backgroundColor = hexStringToUIColor(hex: "#5FC5FF")
        }
        else if (horas > 17){
            view.backgroundColor = hexStringToUIColor(hex: "#2B2E46")
        }
    }
    
    
    
    
    
}
