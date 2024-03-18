//
//  Post.swift
//  AppForBeginners
//
//  Created by Sanjay, Vaishnavi on 19/03/24.
//

import Foundation
struct Post: Identifiable, Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
