//
//  ApiCaller.swift
//  newsAPImvvm
//
//  Created by ddukk15 Akhil Surendran on 21/12/22.
//

import Foundation


final class ApiCaller{
    

    
    init(){
        
    }
    
    struct contants{
        static let headlineUrl = URL(string: "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=c99556bfb5814cd3a9784157a2f3357e")
    }
    
    public func getTopSTories(completion: @escaping (Result<[Article], Error>) -> Void){
        guard let url = contants.headlineUrl else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ data,_, error in
            if let error = error{
                completion(.failure(error))
            }else if let data = data{
                do{
                    let result = try JSONDecoder().decode(ApiResponse.self, from: data)
                    
                    print("Arrrrticle : \(result.articles.count)")
                    completion(.success(result.articles))
                }catch{
                    completion(.failure(error))
                }
            }
            
        }
        task.resume()
    }
}
