import Fluent
import Vapor

struct PatientController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let patients = routes.grouped("patients")
        patients.get(use: index)
        patients.post(use: create)
        patients.group(":patientId") { patient in
            patient.delete(use: delete)
        }
    }

    func index(req: Request) async throws -> [Patient] {
        try await Patient.query(on: req.db).all()
    }

    func create(req: Request) async throws -> Patient {
        let patient = try req.content.decode(Patient.self)
        try await patient.save(on: req.db)
        return patient
    }

    func delete(req: Request) async throws -> HTTPStatus {
        guard let patient = try await Patient.find(req.parameters.get("patientId"), on: req.db) else {
            throw Abort(.notFound)
        }
        try await patient.delete(on: req.db)
        return .noContent
    }
}
