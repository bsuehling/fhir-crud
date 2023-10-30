import Fluent

struct CreateNameUse: AsyncMigration {
    func prepare(on database: Database) async throws {
        try _ = await database.enum("name_use")
            .case("usual")
            .case("official")
            .case("temp")
            .case("nickname")
            .case("anonymous")
            .case("old")
            .case("maiden")
            .create()
    }

    func revert(on database: Database) async throws {
        try await database.enum("human_name").delete()
    }
}
