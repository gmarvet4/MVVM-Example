//
//  User.swift
//  mvvmExample
//
//  Created by Faizan Ali  on 2021/11/29.
//

import Foundation

typealias Users = [UserData]

struct UserData: Decodable {
    let userId, id: Int
    let title, body: String

    enum CodingKeys: String, CodingKey {
        case id
        case userId
        case title
        case body
    }
}
