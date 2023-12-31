import Fluent
import Vapor

final class ContactPoint: Model, Content {
    static let schema = "contact_point"
    
    @ID(key: .id)
    var id: UUID?

    @OptionalEnum(key: "system")
    var system: ContactPointSystem?

    @Field(key: "value")
    var value: String?

    @OptionalEnum(key: "use")
    var use: ContactPointUse?

    @Field(key: "rank")
    var rank: UInt?

    @Field(key: "period")
    var period: Period?

    init() {}

    init(
        id: UUID? = nil,
        system: ContactPointSystem? = nil,
        value: String? = nil,
        use: ContactPointUse? = nil,
        rank: UInt? = nil,
        period: Period? = nil
    ) {
        self.id = id
        self.system = system
        self.value = value
        self.use = use
        self.rank = rank
        self.period = period
    }
}
