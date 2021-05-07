//
//  ViewController.swift
//  AppEventCount
//
//  Created by Diego Araujo Lazanha on 10/03/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var launchLabel: UILabel!
    @IBOutlet weak var configureLabel: UILabel!
    @IBOutlet weak var willConnectLabel: UILabel!
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    @IBOutlet weak var willResignActiveLabel: UILabel!
    @IBOutlet weak var willEnterForegroundLabel: UILabel!
    @IBOutlet weak var didEnterBackgroundLabel: UILabel!
    
    var willConnectCount = 0
    var didBecomeActiveLabel = 0
    var willResignActiveLabel = 0
    var willEnterForegroundLabel = 0
    var didEnterBackgroundLabel = 0
    
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        upDateView()
    }

    func upDateView() {
        //contadores que estão no app delegate
        launchLabel.text = "O app foi carregado \(appDelegate.launchCount) vezes"
        
        configureLabel.text = "A configuração de conexão rodou \(appDelegate.configurationForConnectingCount) vezes"
        
        // Contadores que estão na view Controler
        willConnectLabel.text = "O ... ocorreu \(willConnectCount) vezes"
        
        didBecomeActiveLabel.text = "A cena foi ativada \(didBecomeActiveCount) vezes"
        
        willResignActiveLabel.text = "A cena entrar em modo resign ocorreu \(willResignActiveCount) vezes"
        
        willEnterForegroundLabel.text = "A cena entrar em foreground ocorreu \(willEnterForegroundCount) vezes"
        
        didEnterBackgroundLabel.text = "A cena entrar em background ocorreu \(didEnterBackgroundCount) vezes"
    }

}

