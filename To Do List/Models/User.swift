//
//  User.swift
//  To Do List
//
//  Created by shivakumar chirra on 01/08/25.
//

import Foundation

struct User: Codable {
    let id: String
    let name : String
    let joined: TimeInterval
    let email: String
}
