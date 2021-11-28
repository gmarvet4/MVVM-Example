//
//  NetworkService.swift
//  mvvmExample
//
//  Created by Faizan Ali  on 2021/11/29.
//

import Foundation


class NetworkService :  NSObject {
    
    private let sourcesURL = URL(string: "https://jsonplaceholder.typicode.com/posts")!
    
    func serviceToGetUserData(completion : @escaping (Users) -> ()){
        
        URLSession.shared.dataTask(with: sourcesURL) { (data, urlResponse, error) in
            if let data = data {
                
                let jsonDecoder = JSONDecoder()
                
                let userData = try! jsonDecoder.decode(Users.self, from: data)
            
                    completion(userData)
            }
            
        }.resume()
    }
    
}

