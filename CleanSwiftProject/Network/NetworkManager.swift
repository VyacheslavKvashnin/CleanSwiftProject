//
//  NetworkManager.swift
//  CleanSwiftProject
//
//  Created by Вячеслав Квашнин on 13.06.2022.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    private init() {}
    
    private let urlString = URL(string: "https://jsonplaceholder.typicode.com/posts")
    
    func fetchPosts(completion: @escaping([Post]) -> Void) {
        
        URLSession.shared.dataTask(with: urlString!) { data, response, error in
            if error != nil {
                print(error?.localizedDescription ?? "")
            }
            
            DispatchQueue.main.async {
                guard let data = data else {
                    print(error?.localizedDescription ?? "")
                    return
                }
                do {
                    let task = try JSONDecoder().decode([Post].self, from: data)
                    completion(task)
                    print(task)
                } catch let error {
                    print(error)
                }
            }
        }.resume()
    }
}
