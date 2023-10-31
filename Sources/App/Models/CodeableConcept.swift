import Fluent
import Vapor

final class CodeableConcept: Model, Content {
    static let schema = "coding"
    
    @ID(key: .id)
    var id: UUID?

    @Field(key: "coding")
    var coding: Coding?

    @Field(key: "text")
    var text: String?

    init() { }

    init(
        id: UUID? = nil,
        coding: Coding? = nil,
        text: String? = nil
    ) {
        self.id = id
        self.coding = coding
        self.text = text
    }
}
