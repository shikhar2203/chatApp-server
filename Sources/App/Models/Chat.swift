//
//  File.swift
//  
//
//  Created by shikhar on 01/10/23.
//

import Foundation
import Vapor
import Fluent

final class Chat: Model, Content {
    
    static let schema: String = "chats"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "body")
    var body: String
    
    init() {}
    
    init(id: UUID? = nil, body: String) {
        self.id = id
        self.body = body
    }
}
