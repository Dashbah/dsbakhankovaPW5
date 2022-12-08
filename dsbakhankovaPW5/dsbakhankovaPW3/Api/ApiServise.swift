//
//  ApiCaller.swift
//  dsbakhankovaPW3
//
//  Created by Dashbah on 08.12.2022.
//

import Foundation

final class ApiServise {
    public static let shared = ApiServise()
    
    struct Constants {
        static let topHeadLinesURL = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=fb7e2d1a7a8d4b05979d64d1e318238a")
    }
    
    private init() {}
    
    public func getTopStories(completion :@escaping (Result<[Article], Error>) -> Void) {
        guard let url = Constants.topHeadLinesURL else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) {
            data, _, error in
            if let error = error {
                completion(.failure(error))
            }
            else if let data = data {
                do {
                    let result = try JSONDecoder().decode(ApiResponse.self, from: data)
                    
                    print("Articles: \(result.articles.count)")
                    completion(.success(result.articles))
                }
                catch {
                    completion(.failure(error))
                }
            }
        }
        task.resume()
    }
}
