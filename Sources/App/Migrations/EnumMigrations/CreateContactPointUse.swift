import Fluent

struct CreateContactPointUse: AsyncMigration {
    func prepare(on database: Database) async throws {
        try _ = await database.enum("contact_point_use")
            .case("home")
            .case("work")
            .case("temp")
            .case("old")
            .case("mobile")
            .create()
    }

    func revert(on database: Database) async throws {
        try await database.enum("contact_point_use").delete()
    }
}
