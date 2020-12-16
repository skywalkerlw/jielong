//
//  File.swift
//  
//
//  Created by liang wang on 17/12/20.
//

import Fluent
import Vapor

struct GalleryController {

    /*
         curl -i -X POST "http://127.0.0.1:8080/front/gallery/apply" \
         -H "Content-Type: application/json" \
         -d '{"name": "Liang的驿站"}'
     */
    func apply(req: Request) throws -> EventLoopFuture<Gallery.Apply.Output> {
        let input = try req.content.decode(Gallery.Apply.Input.self)
                let gallery = Gallery(name: input.name)
                return gallery.save(on: req.db)
                    .map { Gallery.Apply.Output(id: gallery.id!.uuidString, name: gallery.name) }
    }

    // ...
}
