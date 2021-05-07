//
//  PhotoInfoControler.swift
//  SpacePhoto
//
//  Created by Diego Araujo Lazanha on 19/03/21.
//

import Foundation

class PhotoInfoControler {
    // em chamada de API é recomendado fazer o tratamento todo...se da certo ou errado
    func fetchPhotoInfo(completion: @escaping (Result<PhotoInfo,
                                                      Error>) -> Void) {
        var urlComponents = URLComponents(string:
                                            "https://api.nasa.gov/planetary/apod")!
        urlComponents.queryItems = [
            "api_key": "DEMO_KEY",
        ].map { URLQueryItem(name: $0.key, value: $0.value) }
        
        let task = URLSession.shared.dataTask(with:
                                                urlComponents.url!) { (data, response, error) in
            let jsonDecoder = JSONDecoder()
            if let data = data {
                do {
                    let photoInfo = try
                        jsonDecoder.decode(PhotoInfo.self, from: data)
                    completion(.success(photoInfo))
                } catch {
                    completion(.failure(error))
                }
            } else if let error = error {
                completion(.failure(error))
            }
        }
        
        task.resume()
    }
}
