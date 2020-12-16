//
//  File.swift
//  
//
//  Created by liang wang on 17/12/20.
//

import Fluent
import Vapor

final class Gallery: Model {
    
    struct Apply {
        struct Input: Content {
            let name: String
        }

        struct Output: Content {
            let id: String
            let name: String
        }
    }
    
    static let schema = "o_gallery"

    @ID(key: .id) var id: UUID?
    
    @Field(key: "name") var name: String

    init() { }

    init(id: UUID? = nil, name: String) {
        self.id = id
        self.name = name
    }
}
