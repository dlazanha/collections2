//
//  ViewController.swift
//  GuessTheFlag2
//
//  Created by Diego Araujo Lazanha on 02/04/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var botton1: UIButton!
    
    @IBOutlet var botton2: UIButton!
    
    @IBOutlet var botton3: UIButton!
    
    var countries = [String]()
    var score = 0
    var correctAnswer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries += ["RS", "SC", "PR", "SP", "RJ", "BA", "ES", "MG", "PA", "PE", "TO"]
   
        botton1.layer.borderWidth = 1
        botton2.layer.borderWidth = 1
        botton3.layer.borderWidth = 1
        
        botton1.layer.borderColor = UIColor.lightGray.cgColor
        botton2.layer.borderColor = UIColor.lightGray.cgColor
        botton3.layer.borderColor = UIColor.lightGray.cgColor

        
    
        
        askQuestion()
    }
    

    func askQuestion (action: UIAlertAction! = nil) {
        
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        botton1.setImage(UIImage(named: countries[0]), for: .normal)
        botton2.setImage(UIImage(named: countries[1]), for: .normal)
        botton3.setImage(UIImage(named: countries[2]), for: .normal)
        
        title = countries[correctAnswer].uppercased()
      
    }
    
    @IBAction func bottonTapped(_ sender: UIButton) {
        
        var title: String
        
        if sender.tag == correctAnswer {
            title = "Acertou, mais um ponto para você !!! "
            score += 1
        } else {
            title = "Errou, menos um ponto para você !!!"
            score -= 1
        }
        
        
        let ac = UIAlertController(title: title, message: "Você tem \(score) pontos ", preferredStyle: .alert)
        
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
    
        
        present(ac, animated: true)
    }
    
    
    
}

