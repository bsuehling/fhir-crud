import Fluent
import Vapor

final class HumanName: Model, Content {
    static let schema = "human_name"
    
    @ID(key: .id)
    var id: UUID?

    @OptionalEnum(key: "use")
    var use: NameUse?

    @Field(key: "text")
    var text: String?

    @Field(key: "family")
    var family: String?

    @Field(key: "given")
    var given: [String]

    @Field(key: "prefix")
    var prefix: [String]

    @Field(key: "suffix")
    var suffix: [String]

    @Field(key: "period")
    var period: Period?

    init() {}

    init(
        id: UUID? = nil,
        text: String? = nil,
        family: String? = nil,
        given: [String] = [],
        prefix: [String] = [],
        suffix: [String] = [],
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
