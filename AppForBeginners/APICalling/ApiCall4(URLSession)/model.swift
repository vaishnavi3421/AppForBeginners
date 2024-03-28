//
//  model.swift
//  AppForBeginners
//
//  Created by Sanjay, Vaishnavi on 27/03/24.
//

import Foundation

struct Response: Codable {
    var result:[model]
}
struct model: Codable {
    var userId: Int
    var id: Int
    var title: String
    var completed: Bool
    
}

