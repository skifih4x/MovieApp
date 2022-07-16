//
//  Networkmanager.swift
//  MovieApp
//
//  Created by Артем Орлов on 04.07.2022.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case noData
    case decodingError
}

struct NetworkManager {
    
    static var shared = NetworkManager()
    
    private init() {}
    
    func fetchMovie(urlString: String, completion: @escaping( Result<MovieTask, NetworkError> ) -> Void )  {

        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            
            guard let data = data else {
                completion(.failure(.invalidURL))
                print(error?.localizedDescription ?? "no description")
                return
            }
            
            do {
                let movie = try JSONDecoder().decode(MovieTask.self, from: data)
                DispatchQueue.main.async {
                    completion(.success(movie)) 
                }
            } catch {
                completion(.failure(.decodingError))
            }
        }.resume()
    }
}
