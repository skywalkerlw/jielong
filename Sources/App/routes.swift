import Vapor

func routes(_ app: Application) throws {
    
    let front = app.grouped("front")
    let basic = front.grouped("basic")
    let gallery = front.grouped("gallery")
    
    let galleryController = GalleryController()
    
// MARK: 前台-基础方法
    basic.post("live") { req -> String in
        return "i am live"
    }
    
    app.get { req in
        return "It works!"
    }
    
    app.get("hello") { req -> String in
        return "Hello, world!"
    }
    
// MARK: 前台-驿站管理
    gallery.post("apply", use: galleryController.apply)
    
}
