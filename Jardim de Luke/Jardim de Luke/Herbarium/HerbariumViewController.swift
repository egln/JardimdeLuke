//
//  ViewController.swift
//  Jardim de Luke
//
//  Created by egln on 07/05/22.
//

import UIKit

class HerbariumViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    //Número de células de level
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return plants.count
    }
    
    //Montagem das células de level
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = levelTableView.dequeueReusableCell(withIdentifier: "levelCell")
        as! LevelTableViewCell
        
        cell.selectionStyle = .none
        cell.backgroundColor = .clear
        cell.level.layer.cornerRadius = 25.0
        
        //Montagem das informações (cor da célula, imagem e título)
        if plants[indexPath.row].nivelDisponivel == true {
            
            cell.plantLbl.text = plants[indexPath.row].nomeCientifico
            cell.levelIcon.image = UIImage(named: plants[indexPath.row].imagem)
            cell.levelLbl.text = plants[indexPath.row].level
            cell.level.backgroundColor = hexStringToUIColor(hex: "#AABFAF")
            
            
            
                
                if plants[indexPath.row].nivelConcluido == true{
                    //cell.level.backgroundColor = hexStringToUIColor(hex: "#56805F")
                    cell.isUserInteractionEnabled = false
                    //cell.levelLbl.textColor = .white
                    //cell.plantLbl.textColor = .white
                    cell.plantLbl.text = "CONCLUÍDO"
                    cell.checkBox.image = UIImage(named: "checkbox")
                    herbariumLabel.text = "Que legal! Luke agora sabe muito sobre a " + plants[indexPath.row].nomePopular + " e está muito feliz! Dê uma olhada no seu jardim"
                    
                }
                else{
                    cell.level.backgroundColor = hexStringToUIColor(hex: "#AABFAF")
                    cell.isUserInteractionEnabled = true
                    
                }
        
        }
        
        else{
            
            cell.isUserInteractionEnabled = false
            cell.plantLbl.text = "Planta misteriosa"
            cell.levelIcon.image = UIImage(named: "blockLeaf")
            cell.levelLbl.text = "Nível bloqueado"
            cell.level.backgroundColor = hexStringToUIColor(hex: "#E4E3E3")
            
        }
        
        
        return cell
    }
    
    //Acionamento dos botões de level
    func tableView(_ levelTableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.item == 0{
            performSegue(withIdentifier: "goToLevel1Segue", sender: nil)
        }
        else if indexPath.item == 1{
            performSegue(withIdentifier: "goToLevel2Segue", sender: nil)
        }
        else if indexPath.item == 2{
            performSegue(withIdentifier: "goToLevel3Segue", sender: nil)
        }
    }
   
    //Table view de níveis
    @IBOutlet weak var levelTableView: UITableView!
    
    //View de fundo que é a grama
    @IBOutlet weak var gramaView: UIView!
    
    //Título Herbário de Luke
    @IBOutlet weak var herbariumTitle: UILabel!
    
    
    //Label de informações do herbário
    @IBOutlet weak var herbariumLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gramaView.backgroundColor = hexStringToUIColor(hex: "#89a68f")
        levelTableView.backgroundColor = .clear
        levelTableView.dataSource = self
        levelTableView.delegate = self
        levelTableView.separatorStyle = .none
        herbariumLabel.text = "Complete os níveis, conheça novas plantas e elas vão aparecer no jardim de Luke!"
        //herbariumLabel.textAlignment = .justified
        
 
        //Coleta a hora para mudar o fundo
        let horas = (Calendar.current.component(.hour, from: Date()))
        //Arruma as cores de acordo com a hora do dia
        if (horas < 5){
            view.backgroundColor = hexStringToUIColor(hex: "#2B2E46")
        }
        else if (horas >= 5) && (horas <= 10) {
            view.backgroundColor = hexStringToUIColor(hex: "FEFFCB")
        }
        else if (horas > 10) && (horas <= 15){
            view.backgroundColor = hexStringToUIColor(hex: "#96ECFF")
        }
        else if (horas > 15) && (horas <= 17){
            view.backgroundColor = hexStringToUIColor(hex: "#5FC5FF")
        }
        else if (horas > 17){
            view.backgroundColor = hexStringToUIColor(hex: "#2B2E46")
            herbariumTitle.textColor = .white
            herbariumLabel.textColor = .white
        }
    }
}
