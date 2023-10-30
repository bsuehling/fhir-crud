import Fluent

struct CreateContactPoint: AsyncMigration {
    func prepare(on database: Database) async throws {
        let contactPointSystem = try await database.enum("contact_point_system").read()
        let contactPointUse = try await database.enum("contact_point_use").read()
        try await database.schema("contact_point")
            .id()
            .field("system", contactPointSystem)
            .field("value", .string)
            .field("use", contactPointUse)
            .field("rank", .int)
            .foreignKey("period_id", references: "period", "id")
            .create()
    }

    func revert(on database: Database) async throws {
        try await database.schema("contact_point").delete()
    }
}
