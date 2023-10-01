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

struct CreateChat: Migration {
    
    func prepare(on database: FluentKit.Database) -> NIOCore.EventLoopFuture<Void> {
        database.schema("chats")
            .id()
            .field("body", .string)
            .create()
    }
    
    func revert(on database: FluentKit.Database) -> NIOCore.EventLoopFuture<Void> {
        database.schema("chats").delete()
    }
    
    
}
