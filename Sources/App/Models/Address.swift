import Fluent
import Vapor

final class Address: Model, Content {
    static let schema = "patient"
    
    @ID(key: .id)
    var id: UUID?

    @Field(key: "use")
    var use: AddressUse?

    @Field(key: "type")
    var type: AddressType?

    @Field(key: "text")
    var text: String?

    @Field(key: "line")
    var line: [String]

    @Field(key: "city")
    var city: String?

    @Field(key: "district")
    var district: String?

    @Field(key: "state")
    var state: String?

    @Field(key: "postal_code")
    var postalCode: String?

    @Field(key: "country")
    var country: String?

    @Field(key: "period")
    var period: Period?

    init() { }

    init(
        id: UUID? = nil
    ) {
        self.id = id
        
    }
}
