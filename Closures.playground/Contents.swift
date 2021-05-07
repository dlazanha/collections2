struct Track: Comparable {
    var trackNumber: Int

    static func < (lhs: Track, rhs: Track) -> Bool {
        return lhs.trackNumber < rhs.trackNumber
    }
}
//// MARK: - MAP
//let tracks = [Track(trackNumber: 3), Track(trackNumber: 2), Track(trackNumber: 1), Track(trackNumber: 4)]
//
//let sortedTracks = tracks.sorted(by: <)
//sortedTracks
//
//// colection using closures
//// Initial array
//let namesNoMap = ["Johnny", "Nellie", "Aaron", "Rachel"]
//
//// Creates an empty array that will be used to store the full names
//var fullNamesNoMap: [String] = []
//
//for name in namesNoMap {
//    let fullName = name + " Smith"
//    fullNamesNoMap.append(fullName)
//    print(fullNamesNoMap)
//}
//
//
//// usando map
//let names = ["Johnny", "Nellie", "Aaron", "Rachel"]
//
//// Creates a new array of full names by adding "Smith" to each
//
//let fullNames = names.map { (name) -> String in
//    return name + " Smith"
//}
//fullNames
//
//// forma simplificada
//let fullNameSimple = names.map{ $0 + " Smith"}
//fullNameSimple

// MARK: - FILTER
//normal
let numbersNormal = [4, 8, 15, 16, 23, 42]
var numbersLessThan20Normal: [Int] = []

for numberNormal in numbersNormal {
    if numberNormal < 20 {
        numbersLessThan20Normal.append(numberNormal)
    }
}

print(numbersLessThan20Normal)


 /// usando o filtro


//let numbers = [4, 8, 15, 16, 23, 42]
//let numbersLessThan20 = numbers.filter { (number) -> Bool in
//    return number < 20
//}
//
//print(numbersLessThan20)


// simplificada

//let numbersLessThan20Simple = numbers.filter { $0 < 20 }
//print(numbersLessThan20Simple)


// MARK: - REDUCE

let numbers = [8, 6, 7, 5, 3, 0, 9]
var total = 0

for number in numbers {
    total = total + number
}
total
// usandoo reduce
let numbersReduce = [8, 6, 7, 5, 3, 0, 9]
let totalReduce = numbersReduce.reduce(0) { (currentTotal, newValue) -> Int in
    return currentTotal + newValue
}
totalReduce

// simplificada
let totalSimple = numbers.reduce(0) { $0 + $1}
totalSimple

// mais simplificada

let totalMegaSimple = numbers.reduce(0, +)
