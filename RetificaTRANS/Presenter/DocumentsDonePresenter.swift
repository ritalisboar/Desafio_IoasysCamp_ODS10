//
//  DocumentsDonePresenter.swift
//  RetificaTRANS
//
//  Created by Rita Lisboa on 09/04/22.
//

import Foundation

func saveUserDocument(userId: String) {
    let params = [
        "document": "7389df5d-84d1-4eb6-a814-401ce24dc0e4",
        "status": "requested"
    ]

    let baseURL = URL(string: "https://ods10-backend-develop.herokuapp.com/api/users/\(userId)/documents")!

    var urlRequest = URLRequest(url: baseURL)
    urlRequest.allHTTPHeaderFields = ["Content-Type": "application/json"]
    urlRequest.httpMethod = "PUT"

    let postString = params.map { "\($0.0)=\($0.1)" }.joined(separator: "&")

    urlRequest.httpBody = postString.data(using: String.Encoding.utf8)

    URLSession.shared.dataTask(with: urlRequest) {data, response, error in
        if let error = error {
            print(error.localizedDescription)
        } else if let data = data {
            do {
                if let httpResponse = response as? HTTPURLResponse {
                    (200...299).contains(httpResponse.statusCode)
                    print("StatusCode:", httpResponse.statusCode)
                    print(postString)
//                    accessToken = httpResponse.allHeaderFields["Authorization"] as! String
//                    print(accessToken)
                } else {
                    print("Invalid Response received from the server")
                    return
                }

                let response = try JSONSerialization.jsonObject(with: data, options: [])
                print("response:", response)

                let object = try JSONDecoder().decode(UserDocumentsParams.self, from: data)

                print("document:", object.document)
                print("status:", object.status)

            } catch {
                print(error.localizedDescription)
            }
        }
    }.resume()
}
