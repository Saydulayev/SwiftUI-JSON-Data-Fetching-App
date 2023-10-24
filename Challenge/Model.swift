//
//  Model.swift
//  Challenge
//
//  Created by Akhmed on 24.10.23.
//

import SwiftUI


struct User: Identifiable, Codable {
    let id: String
    let isActive: Bool
    let name: String
    let age: Int
    let company: String
    let email: String
    let address: String
    let about: String
    let registered: Date
    let tags: [String]
    let friends: [Friend]
}


struct Friend: Identifiable, Codable {
    let id: String
    let name: String
}
