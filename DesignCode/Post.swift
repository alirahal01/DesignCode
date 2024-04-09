//
//  Post.swift
//  DesignCode
//
//  Created by ali rahal on 09/04/2024.
//

import Foundation

struct Post: Codable, Identifiable {
    let id = UUID()
    var title: String
    var body: String
}

class Api {
    func getPosts(completion: @escaping (([Post]) -> ())) {
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")
        
        URLSession.shared.dataTask(with: url!) { data, _, _ in
            let posts = try! JSONDecoder().decode([Post].self, from: data!)
            DispatchQueue.main.async {
                completion(posts)
            }
            print(posts)
        }
        .resume()
    }
}
