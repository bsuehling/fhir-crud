import Fluent
import Vapor

final class Coding: Model, Content {
    static let schema = "coding"
    
    @ID(key: .id)
    var id: UUID?

    @Field(key: "system")
    var system: URL?  // TODO: valid if I want to specify as URI?

    @Field(key: "version")
    var version: String?

    @Field(key: "code")
    var code: String?  // TODO: restrict to valid code strings

    @Field(key: "display")
    var display: String?

    @Field(key: "user_selected")
    var userSelected: Bool?

    init() { }

    init(
        id: UUID? = nil,
        system: URL? = nil,
        version: String? = nil,
        code: String? = nil,
        display: String? = nil,
        userSelected: Bool? = nil
    ) {
        self.id = id
        self.system = system
        self.version = version
        self.code = code
        self.display = display
        self.userSelected = userSelected
    }
}
