import Fluent

struct CreateContactPointSystem: AsyncMigration {
    func prepare(on database: Database) async throws {
        try _ = await database.enum("contact_point_system")
            .case("phone")
            .case("fax")
            .case("email")
            .case("pager")
            .case("url")
            .case("sms")
            .case("other")
            .create()
    }

    func revert(on database: Database) async throws {
        try await database.enum("contact_point_system").delete()
    }
}
