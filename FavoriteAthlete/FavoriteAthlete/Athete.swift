//
//  Athete.swift
//  FavoriteAthlete
//
//  Created by Diego Araujo Lazanha on 11/03/21.
//

import Foundation

struct Athlete {
    var name: String
    var age: Int
    var league: String
    var team: String
    
    var description: String {
        return "\(name) is \(age) years old and plays for the \(team) in the \(league)."
    }
}
