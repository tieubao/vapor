import Console

extension ConsoleLogger: Service {
    /// See Service.name
    public static var serviceName: String {
        return "console"
    }

    /// See Service.serviceSupports
    public static var serviceSupports: [Any.Type] {
        return [LogProtocol.self]
    }

    /// See Service.make
    public static func makeService(for drop: Droplet) throws -> ConsoleLogger? {
        return try .init(drop.make(ConsoleProtocol.self))
    }
}