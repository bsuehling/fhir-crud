import Fluent

struct CreateAdministrativeGender: AsyncMigration {
    func prepare(on database: Database) async throws {
        try _ = await database.enum("administrative_gender")
            .case("male")
            .case("female")
            .case("other")
            .case("unknown")
            .create()
    }

    func revert(on database: Database) async throws {
        try await database.enum("human_name").delete()
    }
}
