import Cocoa

var str = "Hello, playground"


let iAmDriver = false
let iAmDrink = true

if iAmDriver {
    print( "estou dirigindo")
} else if iAmDrink {
    print( " estou bebendo")
} else {
    print("to fazendo nada")
}


// escopo do bloco
var name: String

let fName = "Diego"
//no ternario essa aprte do codigo não precisa --- fica a dica
if fName == "Diegoo" {
    print("ok")

} else {
    name = "Gustavo"
    print("troquei de nome")
}

// ternario
// se comporta assim: expressão seguida de ? ( como se fosse uma pergunta) ja atribuindo o valor (true ou false) ...depois os dois pontos (:) para separar caso a primeira não seja verdadeira.... e tbm seguida do valor(true ou false)
name = fName == "Diego" ? "sim eu sou o Diego" : "eita coisa"
print(iAmDrink)



// MARK: - opcionais


// estou dizendo que tenho um dog...no caso nome Bob
let myDog = "Bob"
//mas eu não tenho um gato...como declarar?
// let cat = "" // não é o certo declarar uma opcional

let cat: String? = nil // esse é o jeito certo...ou seja tem uma caixa de meméria la, mas deixa ela como opcional


var dog: String?
dog = "Bob"
print (dog)


// agora vou descompactar
// outro exemplo: usando INT
var result: Int? = 50
print(result) // vai dar o resultado porem com optional antes....mas eu não quero isso eu quero o resultado da variavel mas sem o optional antes da frase...print
result = nil
print(result)

// usa o ! para descompactar....
dog = nil // aqui usei nil antes...então não tem mais nada dentro da variavel DOG
//print(dog!) // uma forma insegura, cuidado....deixei comentado

// o certo seria:
if let descompactedDog = dog {
    print(descompactedDog)
}

// para mostrar o conteudo mesmo se não tem nada nela...ela é nil....como fazer?

print(dog ?? "não tenho cachorro") // prestar a atenção pq o dog esta como "BOB"...no caso ele vai impreimir BOB ......mas se ele não estiver( ou estiver como nil) vai imprimir o que vc deixou de mensagem, no caso.. não tenho cachorro"


// MARK: - tuplas e arrays

// a tupla ajuda a contextualizar os dados
// para declara é igual as variaveis exemplo:
let latitude: Double = 12.34 // isso ainda não é tupla ok

let coords: (Double, Double) = (55.55, 66.66)
coords.0 // peguei a primeira
coords.1 // peguei a segunda ... cada uma recebendo o que vc pediu pra mostrar

// agora de outro tipo...nomenado cada parte da tupla
let coordsMore = ( lat: 12.1, long: 99.7) // nesse caso nomeei cada parte
coordsMore.lat // chamei cada uma dela assim como no exeplo anterior
coordsMore.long


// outro modelo
let camera = (x: 10, y: 20, z: 1)
//pra chamar isoladamente...antes tem que identificar cada uma dentro da variavel "camera"

let (x, y, z) = camera // destruir cada uma e recuperar novamente
print(x)
print(y)
print(z)

// para deixar uma variavel de lado...ou que não preciso, no lugar da sentença coloco anderline ( _ ) exemplo: let ( x, y, _)...então o "z"não precisar ter print


let user = (name:"Diego", age: 31)
user.name
user.age
print(user)


// arrays ______________
// adicionando
var userName: [String] = []
userName.append("Diego")

userName += [ "Maria", "Carlos"] // usando alternador ternario
// para acessar cada dado?

userName[0] // mas c acessar um indice que não existe...vai dar erro
// usando o range(fatia) ou slice
let firtThree = userName [0...2]// se for fora do range vai dar erro...mas não cria outro array...para criar outro array sera assim:" let firstThree = Array(userName[0...2])"
firtThree[2]

//usando append:
userName.append("Joséph")

//remover
//userName.removeAll() // vou comentar para as outras funçoes serem validas

// funções de condições do arrays
userName.isEmpty // verificarf lista vazia

userName.count // verificar tqmanho da lista

// verificar se a alista contem algum elemento
userName.contains("Jorge") // se não tiver vi retornar false

// para trazer o primeiro elemento:
userName.first // se alista estiver vazia..vai imprimir nil
// o certo seria:
if let first = userName.first {
    print(first)
}


// inserir no index X

userName.insert("Lazanha", at: 0)

// remover no index X

let removed = userName.remove(at: 0)
userName
// remover o ultimo:
let removedLast = userName.removeLast()
userName

// trocar por slice ou fatia:
userName[0...1] = ["12", "13", "14"]
print(userName)

// trocar por indice:
userName.swapAt(0, 1)


// MARK: - LOOPS

// primeiro c declara o while e a condição {
// bloco do looping
//}
// não deve ser verdadeira c não vai dar lopp infinito...pra isso precisa quebrar uma condição

// USANDO O WHILE: checa primeiro a condição

var i = 1
while i < 10 {
    print(i)
    i += 1 // sem essa instruçao seria um loop infinito...pq agora ele parou de contar

}
print("nova contagem")

// USANDO O REPEAT,  ele faz primeiro uma instrução, depois ele checa a consição
// chamado DO WHILE

i = 10 //ZERAR A CONTAGEM

repeat {
    print(i)
    i += 1
} while ( 1 < 10)


// FOR

// sequencias = ranges
let range = 0...5 // inclusive..inclui
let r = 0..<5  // exclusive...exclui
print(range)


var limit = 5
let rg = 0..<limit

// FOR écontrolado pelo range

var sum = 0
let count = 10

for i in i...count {  // vai fazer até onde vc expecificou
    sum += 1
}
print(sum)
