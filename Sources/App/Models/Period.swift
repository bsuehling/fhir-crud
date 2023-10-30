import Fluent
import Vapor

final class Period: Model, Content {
    static let schema = "period"
    
    @ID(key: .id)
    var id: UUID?

    @Field(key: "start")
    var start: Date?

    @Field(key: "end")
    var end: Date?

    init() {}

    init(id: UUID? = nil, start: Date? = nil, end: Date? = nil
    ) {
        self.id = id
        self.start = start
        self.end = end
    }
}
