import Fluent

struct CreatePatient: AsyncMigration {
    func prepare(on database: Database) async throws {
        let administrativeGender = try await database.enum("administrative_gender").read()
        try await database.schema("patient")
            .id()
            .field("active", .bool)
            .foreignKey("name_id", references: "human_name", "id")
            .foreignKey("contact_point_id", references: "contact_point", "id")
            .field("gender", administrativeGender)
            .field("birth_date", .date)
            .field("deceased_boolean", .bool)
            .field("deceased_date", .date)
            .create()
    }

    func revert(on database: Database) async throws {
        try await database.schema("patient").delete()
    }
}
