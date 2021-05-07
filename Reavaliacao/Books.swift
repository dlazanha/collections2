//
//  Books.swift
//  Reavaliacao
//
//  Created by Diego Araujo Lazanha on 22/03/21.
//

import Foundation

struct Book: Codable {
    var name: String
    var Author: String
    
    
    static var arquiveURL: URL {
        let documentsDirectory = FileManager.default.urls(for: .documentationDirectory, in: .userDomainMask).first!
        
        let arquiveURL = documentsDirectory.appendingPathComponent("books").appendingPathExtension("plist")
        
        return arquiveURL
}
    static var descriptionBooks: [Book] {
        return [
            Book(name: "Ein Neus Land", Author: "ShaunTan"),
            Book(name: "Bosch", Author: "Laurinda Dixon"),
            Book(name: "EDare to Lead", Author: "Brené Brown"),
            Book(name: "Blasting for Optimun Hert Recipe Book", Author: "NutriBullet"),
            Book(name: "Drinking with the Saints", Author: "Michael P. Foley"),
            Book(name: "A Guide to Tea", Author: "Adagio Teas"),
            Book(name: "The Life and Complete Work of Francisco Goya", Author: "P. Gassier & J. Wilson"),
            Book(name: "Lady Cottington's Pressed Fairy Book", Author: "Lady Cottington"),
            Book(name: "How to Draw Cats", Author: "Jenet Rancan"),
            Book(name: "Drawing People", Author: "Barbara Bradley"),
            Book(name: "Wath to Say When You Talk to Yourself", Author: "Shad Helmstetter"),
            
        ]
    }
}
