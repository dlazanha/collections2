import UIKit

let range = 0...5 // vai até o ultimo indice
let r = 0..<5  // exclui o ultimo indice


var limit = 5
let rg = 0..<limit


// for é controlado pelo range

var sum = 0
let count = 10

for i in 1...count { // imutavel...let
    sum += i
}
print(sum)


//ignora o index usando o _ anderscore
for _ in 1...count where count > 50 {
    print("oi")
}


5 % 2 // modulo é o resto da divisão


for i in 0...count where i % 2 == 0 {
    print(i)
}

for i in 0..<5 {
    print(i)
}


// MARK: - CLASSES

class Produt {
    // desempacotando um optional
    
    var id: Int?
    var name: String?
    
}

let p = Produt()
p.id = 3
p.name = "nome do produto"

print(p.id!)


let p2 = Produt()
p2.id = 44
p2.name = "nome do produto2"

print(p2.id!)
print(p2.name!)
// MARK: - usando var e init

class Product2 {
    let id: Int
    var name: String
    
    init(id : Int, name: String) {
        self.id = id
        self.name = name
    }
    
    func setName(name: String) {
        self.name = name
    }
   
}
let p3 = Product2(id: 10, name: "produto 03")
let p4 = Product2(id: 20, name: "produto 04")

print(p3.name)

p3.setName(name: "trocando o nome")
print(p3)
