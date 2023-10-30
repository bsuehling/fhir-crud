import Fluent

struct CreatePeriod: AsyncMigration {
    func prepare(on database: Database) async throws {
        try await database.schema("period")
            .id()
            .field("start", .date)
            .field("end", .date)
            .create()
    }

    func revert(on database: Database) async throws {
        try await database.schema("period").delete()
    }
}
