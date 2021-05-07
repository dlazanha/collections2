import UIKit
import Foundation


var array = ["aaa", "bbb", "ccc"]
array.append("xxx")
array.insert("rrr", at: 1)
array.remove(at: 0)
array

// dictionary

let dic: [Int : String] = [ 1 : "AAA", 2 : "BBB", 3 : "CCC"] // usando chave e valor

dic[0]  // para achar o indice que preciso rapidamente


for value in array.enumerated() {
    print(value)
}
for (index, value) in array.enumerated() {
    print(" \(index) é o local ou indice....e \(value) é o nome ou valor")
}


// trocando os tipos, transformando

let price: Double = 20.0
print(price)
print(Int(price))
print(String(price))


// para contar uma string
var hello: String = "doido"
hello.count


// tuplas
let tupla: (Int, String) = (1, "User")
print(tupla.0)// vai usar o indice...ou seja o segundo elemento

// função com retorno
func sum(inteiro first: Int, secund: Int) -> Int {
    return first + secund
}
let result = sum(inteiro: 2, secund: 3)
print(result)


// opcionais
func findPlataform (company: String) -> String? { // coloca ? no tipo da variavel que vc quer...ele vai entender que pode receber um nulo
    if (company == "Apple") {
        return "iOs"
    } else if (company == "Google") {
        return "Andoid"
    }
    return nil
}

var platforms = findPlataform(company: "Apple")
if let new = platforms { // para desempacotar.. o app não vai dar crash em tempo de execussão
    print("plataform \(platforms!)")
    // se não usar if let...use o ! no plataforms...mas tem o risco
}


