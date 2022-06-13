//
//  Model.swift
//  CleanSwiftProject
//
//  Created by Вячеслав Квашнин on 13.06.2022.
//

import Foundation

struct Post: Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
