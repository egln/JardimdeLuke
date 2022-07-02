//
//  Level1.swift
//  Jardim de Luke
//
//  Created by egln on 09/05/22.
//

import Foundation
import UIKit


class Level1ViewController: UIViewController{
 
    
    @IBOutlet weak var level1PlantImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        level1PlantImageView.image = UIImage(named: "pitangueira")
        level1PlantImageView.layer.cornerRadius = 20.0
        
    }
    
    

   
    //PICKER DE NOME DA PLANTA
    
    
    
    @IBAction func botaoConfirmar(_ sender: UIButton) {
            plants[0].nivelConcluido = true
            plants[1].nivelDisponivel = true
        navigationController?.popViewController(animated: true)
    }
    
}
