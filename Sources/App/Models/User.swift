//
//  File.swift
//  
//
//  Created by shikhar on 01/10/23.
//

import Foundation
import Vapor
import Fluent

final class User: Model, Content {
    
    static let schema: String = "users"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "username")
    var username: String
    
    @Field(key: "fullname")
    var fullname: String
    
    @Field(key: "email")
    var email: String
    
    @Field(key: "password")
    var password: String
    
    @Children(for: \.$user)
    var chats: [Chat]
    
    init(){}
    
    init(id: UUID? = nil, username: String, fullname: String, email: String, password: String) {
        self.id = id
        self.username = username
        self.fullname = fullname
        self.email = email
        self.password = password
    }
    
}
