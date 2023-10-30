import Fluent
import Vapor

final class Patient: Model, Content {
    static let schema = "patient"
    
    @ID(key: .id)
    var id: UUID?

    @Field(key: "active")
    var active: Bool?

    @OptionalParent(key: "name_id")
    var name: HumanName?

    @OptionalParent(key: "contact_point_id")
    var telecom: ContactPoint?

    @OptionalEnum(key: "gender")
    var gender: AdministrativeGender?

    @Field(key: "birth_date")
    var birthDate: Date?

    @Field(key: "deceased_boolean")
    var deceasedBoolean: Bool?

    @Field(key: "deceased_date")
    var deceasedDate: Date?

    // TODO: Add remaining patient fields

    init() { }

    init(
        id: UUID? = nil,
        active: Bool? = nil,
        name: HumanName? = nil,
        telecom: ContactPoint? = nil,
        gender: AdministrativeGender? = nil,
        birthDate: Date? = nil,
        deceasedBoolean: Bool? = nil,
        deceasedDate: Date?
    ) {
        self.id = id
        self.active = active
        self.name = name
        self.telecom = telecom
        self.gender = gender
        self.birthDate = birthDate
        self.deceasedBoolean = deceasedBoolean
        self.deceasedDate = deceasedDate
    }
}
