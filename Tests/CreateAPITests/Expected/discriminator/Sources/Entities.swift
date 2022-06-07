// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct A: Codable {
    public var kind: String

    public init(kind: String) {
        self.kind = kind
    }
}

public struct B: Codable {
    public var kind: String

    public init(kind: String) {
        self.kind = kind
    }
}

public struct C: Codable {
    public var kind: String

    public init(kind: String) {
        self.kind = kind
    }
}

public struct Container: Codable {
    public var content: Content

    public enum Content: Codable {
        case a(A)
        case b(B)
        case c(C)

        public init(from decoder: Decoder) throws {
            
            struct Discriminator: Decodable {
                let kind: String
            }

            let container = try decoder.singleValueContainer()

            switch (try container.decode(Discriminator.self)).kind {
            case "a": self = .a(try container.decode(A.self))
            case "d": self = .a(try container.decode(A.self))
            case "b": self = .b(try container.decode(B.self))
            case "c": self = .c(try container.decode(C.self))

            default:
                throw DecodingError.dataCorruptedError(in: container, debugDescription: "Failed to initialize `oneOf`")
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .a(let value): try container.encode(value)
            case .b(let value): try container.encode(value)
            case .c(let value): try container.encode(value)
            }
        }
    }

    public init(content: Content) {
        self.content = content
    }
}

struct StringCodingKey: CodingKey, ExpressibleByStringLiteral {
    private let string: String
    private var int: Int?

    var stringValue: String { return string }

    init(string: String) {
        self.string = string
    }

    init?(stringValue: String) {
        self.string = stringValue
    }

    var intValue: Int? { return int }

    init?(intValue: Int) {
        self.string = String(describing: intValue)
        self.int = intValue
    }

    init(stringLiteral value: String) {
        self.string = value
    }
}
