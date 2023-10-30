import Fluent

struct CreateHumanName: AsyncMigration {
    func prepare(on database: Database) async throws {
        let nameUse = try await database.enum("name_use").read()
        try await database.schema("human_name")
            .id()
            .field("use", nameUse)
            .field("text", .string)
            .field("family", .string)
            .field("given", .array(of: .string), .required)
            .field("prefix", .array(of: .string), .required)
            .field("suffix", .array(of: .string), .required)
            .foreignKey("period_id", references: "period", "id")
            .create()
    }

    func revert(on database: Database) async throws {
        try await database.schema("human_name").delete()
    }
}
