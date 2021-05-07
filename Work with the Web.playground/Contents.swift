import Foundation
import PlaygroundSupport

// ACESSANDO UM WEB SITE
// apenas para o playground
//PlaygroundPage.current.needsIndefiniteExecution = true



//// 1 - definir a URL
////let url = URL(string: "https://www.apple.com")!
//
//// 2 - criar a Task
////let task = URLSession.shared.dataTask(with: url) {
//   (data, response, error) in
//// 4- processar os dados recebidos assincronamente aqui no Closure
//    if let data = data {
//        let string = String(data: data, encoding: .utf8)
////        print(string)
////
////        print(data as NSData)
//    }
//    // apenas para o playground
//    PlaygroundPage.current.finishExecution()
//}
//// 3 - executar a tarefa
//task.resume()


//ACESSANDO API

//PlaygroundPage.current.needsIndefiniteExecution = true

let url = URL(string: "https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY")!

    let taskAPI = URLSession.shared.dataTask(with: url) { (data, response, error) in

    if let data = data,
       let string = String(data: data, encoding: .utf8) {
        print(string)
    } else {
        print("Algo saiu errado")
    }
//    PlaygroundPage.current.finishExecution()
}
taskAPI.resume()






//let task = URLSession.shared.dataTask(with: urlComponents.url!) { (data, response, error) in
//
//    let jasonDecoder = JSONDecoder()
//    if let data = data,
//        let string = String(data: data, encoding: .utf8) {
//        print(string)
//    }
////    PlaygroundPage.current.finishExecution()
//}
////        taskAPI.resume()


// API usando URL components
struct PhotoInfo: Codable {
    var title: String
    var description: String
    var url: URL
    var copyright: String?

    enum CodingKeys: String, CodingKey {
        case title
        case description = "explanation"
        case url
        case copyright
    }


// decodificou o JSON e trouxe pra Swift...no caso um array
    
    var urlComponents = URLComponents(string: "https://api.nasa.gov/planetary/apod")!
    urlComponents.queryItems = [
    "api_key": "DEMO_KEY",
    "date": "2013-07-16"
    ].map { URLQueryItem(name: $0.key, value: $0.value)
    
    let task = URLSession.shared.dataTask(with: urlComponents.url!) { (data, response, error) in
    
    let jsonDecoder = JSONDecoder()
    if let data = data,
    let photoDictionary = try? jsonDecoder.decode(PhotoInfo.self, from: data) {
    print(photoDictionary)
    }
    PlaygroundPage.current.finishExecution()
    }
    
    }
    task.resume()
}
