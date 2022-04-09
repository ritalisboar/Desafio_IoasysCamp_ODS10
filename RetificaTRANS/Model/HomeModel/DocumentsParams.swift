//
//  DocumentsParams.swift
//  RetificaTRANS
//
//  Created by Rita Lisboa on 09/04/22.
//

import Foundation

struct DocumentsParams: Codable {
    let id: String
    let name: String
    let description: String
    let price: Int
    let link: String
    let location: String
    let duration: String
    let order: Int
}
