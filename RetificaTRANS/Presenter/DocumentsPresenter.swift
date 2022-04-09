//
//  DocumentsPresenter.swift
//  RetificaTRANS
//
//  Created by Rita Lisboa on 09/04/22.
//

import Foundation

func getDocuments() {
    let baseURL = URL(string: "https://ods10-backend-develop.herokuapp.com/api/documents")!
    
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
                
                let object = try JSONDecoder().decode([DocumentsParams].self, from: data)
//                print(object)
                
                print("id:", object[0].id)
                print("name:", object[0].name)
                print("description:", object[0].description)
                print("price:", object[0].price)
                print("link:", object[0].link)
                print("location:", object[0].location)
                print("duration:", object[0].duration)
                print("order:", object[0].order)
                
            } catch {
                print(error.localizedDescription)
            }
        }
    }.resume()
}
