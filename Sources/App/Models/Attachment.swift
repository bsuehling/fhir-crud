import Fluent
import Vapor

final class Attachment: Model, Content {
    static let schema = "patient"
    
    @ID(key: .id)
    var id: UUID?

    @Field(key: "content_type")
    var contentType: String?  // TODO: restrict to mime types

    @Field(key: "language")
    var language: String?  // TODO: restrict to languages

    @Field(key: "data")
    var data: ByteBuffer?

    @Field(key: "url")
    var url: URL?

    @Field(key: "size")
    var size: Int64?

    @Field(key: "hash")
    var hash: ByteBuffer?

    @Field(key: "title")
    var title: String?

    @Field(key: "creation")
    var creation: Date?

    @Field(key: "height")
    var height: UInt?

    @Field(key: "width")
    var width: UInt?

    @Field(key: "frames")
    var frames: UInt?

    @Field(key: "duration")
    var duration: Float?

    @Field(key: "creation")
    var pages: UInt?

    init() { }

    init(
        id: UUID? = nil,
        contentType: String? = nil,
        language: String? = nil,
        data: ByteBuffer? = nil,
        url: URL? = nil,
        size: Int64? = nil,
        hash: ByteBuffer? = nil,
        title: String? = nil,
        creation: Date? = nil,
        height: UInt? = nil,
        width: UInt? = nil,
        frames: UInt? = nil,
        duration: Float? = nil,
        pages: UInt? = nil
    ) {
        self.id = id
        self.contentType = contentType
        self.language = language
        self.data = data
        self.url = url
        self.size = size
        self.hash = hash
        self.title = title
        self.creation = creation
        self.height = height
        self.width = width
        self.frames = frames
        self.duration = duration
        self.pages = pages
    }
}
