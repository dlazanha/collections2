//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Diego Araujo Lazanha on 11/03/21.
//

import UIKit

class AthleteFormViewController: UIViewController {

    
    
    var athlete: Athlete?
    
    init?(coder: NSCoder, athlete: Athlete?) {
    self.athlete = athlete
    super.init(coder: coder)
}

required init?(coder: NSCoder) {
    fatalError("init (coder:) has not been implemented")
}

override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
    updateView()
}
func updateView () {
    guard let athlete = athlete else {
        return
    }
    
}

    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    

}
