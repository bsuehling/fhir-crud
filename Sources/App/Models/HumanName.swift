import Fluent
import Vapor

final class HumanName: Model, Content {
    static let schema = "human_name"
    
    @ID(key: .id)
    var id: UUID?

    @Parent(key: "use")
    var use: HumanNameUse?

    @Field(key: "text")
    var text: String?

    @Field(key: "family")
    var family: String?

    @Field(key: "given") // TODO: 0..*
    var given: String?

    @Field(key: "prefix") // TODO: 0..*
    var prefix: String?

    @Field(key: "suffix") // TODO: 0..*
    var suffix: String?

    @parent(key: "period_id")
    var period: Period?

    init() {}

    init(
        id: UUID? = nil,
        text: String? = nil,
        family: String? = nil,
        given: String? = nil,
        prefix: String? = nil,
        suffix: String? = nil,
        period: Period? = nil
    ) {
        self.id = id
        self.text = text
        self.family = family
        self.given = given
        self.prefix = prefix
        self.suffix = suffix
        self.period = period
    }
}
