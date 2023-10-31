import Fluent
import Vapor

final class Identifier: Model, Content {
    static let schema = "identifier"
    
    @ID(key: .id)
    var id: UUID?

    @OptionalEnum(key: "use")
    var use: IdentifierUse?

    @Field(key: "type")
    var type: CodeableConcept?

    @Field(key: "system")
    var system: URL?

    @Field(key: "value")
    var value: String?

    @Field(key: "period")
    var period: Period?

    // TODO: assigner

    init() { }

    init(
        id: UUID? = nil,
        use: IdentifierUse? = nil,
        type: CodeableConcept? = nil,
        system: URL? = nil,
        value: String? = nil,
        period: Period? = nil
    ) {
        self.id = id
        self.use = use
        self.type = type
        self.system = system
        self.value = value
        self.period = period
    }
}
