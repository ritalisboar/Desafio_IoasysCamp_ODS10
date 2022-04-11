//
//  UserDocumentsPresenter.swift
//  RetificaTRANS
//
//  Created by Rita Lisboa on 09/04/22.
//

import Foundation

func getUserDocuments(userId: String) {
    let baseURL = URL(string: "https://ods10-backend-develop.herokuapp.com/api/users/\(userId)/documents")!
    
    var urlRequest = URLRequest(url: baseURL)
    
//    urlRequest.allHTTPHeaderFields = ["application/json": "content-Type"]
    urlRequest.allHTTPHeaderFields = ["content-type": "application/json"]
    urlRequest.httpMethod = "GET"
//    urlRequest.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
    
    URLSession.shared.dataTask(with: urlRequest) {data, response, error in
        if let error = error {
            print(error.localizedDescription)
        } else if let data = data {
            
            do {
                if let httpResponse = response as? HTTPURLResponse {
                    (200...299).contains(httpResponse.statusCode)
                    print("StatusCode:", httpResponse.statusCode)
//                    httpResponse.allHeaderFields
                } else {
                    print("Invalid Response received from the server")
                    return
                }
                
                let response = try JSONSerialization.jsonObject(with: data, options: [])
                print("Response:", response)
                
                let object = try JSONDecoder().decode([UserDocumentsParams].self, from: data)
                print(object)
                
//                print("document:", object[0].document)
//                print("status:", object[0].status)
    
            } catch {
                print(error.localizedDescription)
            }
        }
    }.resume()
}
