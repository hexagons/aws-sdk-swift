// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension WorkMailMessageFlow {
    //MARK: Enums

    //MARK: Shapes

    public struct GetRawMessageContentRequest: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "messageId", location: .uri(locationName: "messageId"))
        ]

        /// The identifier of the email message to retrieve.
        public let messageId: String

        public init(messageId: String) {
            self.messageId = messageId
        }

        public func validate(name: String) throws {
            try validate(self.messageId, name:"messageId", parent: name, max: 120)
            try validate(self.messageId, name:"messageId", parent: name, min: 1)
            try validate(self.messageId, name:"messageId", parent: name, pattern: "[a-z0-9\\-]*")
        }

        private enum CodingKeys: String, CodingKey {
            case messageId = "messageId"
        }
    }

    public struct GetRawMessageContentResponse: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "messageContent"
        public static var _encoding = [
            AWSMemberEncoding(label: "messageContent", encoding: .blob)
        ]

        /// The raw content of the email message, in MIME format.
        public let messageContent: AWSPayload

        public init(messageContent: AWSPayload) {
            self.messageContent = messageContent
        }

        private enum CodingKeys: String, CodingKey {
            case messageContent = "messageContent"
        }
    }
}
