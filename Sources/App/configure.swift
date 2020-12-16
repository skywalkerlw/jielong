import Vapor
import Fluent
import FluentMySQLDriver

// configures your application
public func configure(_ app: Application) throws {
    app.databases.use(.mysql(
        hostname: "localhost",
        port: 3306,
        username: "root",
        password: "root",
        database: "oz_omgea",
        tlsConfiguration: .forClient(certificateVerification: .none)
    ), as: .mysql)
    try routes(app)
}
