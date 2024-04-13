//
//  model.swift
//  AppForBeginners
//
//  Created by Sanjay, Vaishnavi on 27/03/24.
//

import Foundation

struct User: Codable {
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case designation = "Designation"
        case email = "Email"
    }
    var id: UUID = UUID()
    var name: String
    var designation: String
    var email: String
    
}
class ReadData : ObservableObject {
    
}

