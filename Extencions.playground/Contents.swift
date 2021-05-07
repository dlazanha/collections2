import UIKit

extension UIColor {
    static var random: UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)

        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}

let color = UIColor.red
print(color)

let newColor = UIColor.random
print(newColor)
print(newColor)

// usa extensão para conferir os requisitos de uma senha
extension String {
    init?(passwordSafeString: String) {
        guard passwordSafeString.rangeOfCharacter(from: .uppercaseLetters)
   != nil &&
            passwordSafeString.rangeOfCharacter(from: .lowercaseLetters)
   != nil &&
            passwordSafeString.rangeOfCharacter(from: .punctuationCharacters)
   != nil &&
            passwordSafeString.rangeOfCharacter(from: .decimalDigits)
   != nil &&
                passwordSafeString.count > 5
        else {
                return nil
        }

        self = passwordSafeString
    }
}
let safeString = String.init(passwordSafeString: "Qa,2")
