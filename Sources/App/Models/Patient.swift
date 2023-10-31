import Fluent
import Vapor

final class Patient: Model, Content {
    static let schema = "patient"
    
    @ID(key: .id)
    var id: UUID?

    @Field(key: "identifier")
    var identifier: [Identifier]

    @Field(key: "active")
    var active: Bool?

    @Field(key: "name")
    var name: [HumanName]

    @Field(key: "contact_point")
    var telecom: [ContactPoint]

    @OptionalEnum(key: "gender")
    var gender: AdministrativeGender?

    @Field(key: "birth_date")
    var birthDate: Date?

    @Field(key: "deceased_boolean")
    var deceasedBoolean: Bool?

    @Field(key: "deceased_date")
    var deceasedDate: Date?

    @Field(key: "address")
    var address: [Address]

    @Field(key: "marital_status")
    var maritalStatus: CodeableConcept?

    @Field(key: "multiple_birth_boolean")
    var multipleBirthBoolean: Bool?

    @Field(key: "multiple_birth_integer")
    var multipleBirthInteger: Int?

    // TODO: Add remaining patient fields

    init() { }

    init(
        id: UUID? = nil,
        identifier: [Identifier] = [],
        active: Bool? = nil,
        name: [HumanName] = [],
        telecom: [ContactPoint] = [],
        gender: AdministrativeGender? = nil,
        birthDate: Date? = nil,
        deceasedBoolean: Bool? = nil,
        deceasedDate: Date?,
        address: [Address],
        maritalStatus: CodeableConcept?,
        multipleBirthBoolean: Bool?,
        multipleBirthInteger: Int?
    ) {
        self.id = id
        self.identifier = identifier
        self.active = active
        self.name = name
        self.telecom = telecom
        self.gender = gender
        self.birthDate = birthDate
        self.deceasedBoolean = deceasedBoolean
        self.deceasedDate = deceasedDate
        self.address = address
        self.maritalStatus = maritalStatus
        self.multipleBirthBoolean = multipleBirthBoolean
        self.multipleBirthInteger = multipleBirthInteger
    }
}
