//
//  File.swift
//  
//
//  Created by shikhar on 01/10/23.
//

import Foundation
import Vapor
import Fluent
import FluentPostgresDriver

struct CreateUser: Migration{
    
    func prepare(on database: FluentKit.Database) -> NIOCore.EventLoopFuture<Void> {
        database.schema("users")
            .id()
            .field("username", .string)
            .field("fullname", .string)
            .field("email", .string)
            .field("password", .string)
            .create()
    }
    
    func revert(on database: FluentKit.Database) -> NIOCore.EventLoopFuture<Void> {
        database.schema("users").delete()
    }
    
    
}
