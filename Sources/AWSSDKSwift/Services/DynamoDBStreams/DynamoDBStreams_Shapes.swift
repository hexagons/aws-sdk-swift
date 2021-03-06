//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension DynamoDBStreams {
    //MARK: Enums

    public enum KeyType: String, CustomStringConvertible, Codable {
        case hash = "HASH"
        case range = "RANGE"
        public var description: String { return self.rawValue }
    }

    public enum OperationType: String, CustomStringConvertible, Codable {
        case insert = "INSERT"
        case modify = "MODIFY"
        case remove = "REMOVE"
        public var description: String { return self.rawValue }
    }

    public enum ShardIteratorType: String, CustomStringConvertible, Codable {
        case trimHorizon = "TRIM_HORIZON"
        case latest = "LATEST"
        case atSequenceNumber = "AT_SEQUENCE_NUMBER"
        case afterSequenceNumber = "AFTER_SEQUENCE_NUMBER"
        public var description: String { return self.rawValue }
    }

    public enum StreamStatus: String, CustomStringConvertible, Codable {
        case enabling = "ENABLING"
        case enabled = "ENABLED"
        case disabling = "DISABLING"
        case disabled = "DISABLED"
        public var description: String { return self.rawValue }
    }

    public enum StreamViewType: String, CustomStringConvertible, Codable {
        case newImage = "NEW_IMAGE"
        case oldImage = "OLD_IMAGE"
        case newAndOldImages = "NEW_AND_OLD_IMAGES"
        case keysOnly = "KEYS_ONLY"
        public var description: String { return self.rawValue }
    }

    //MARK: Shapes

    public class AttributeValue: AWSShape {

        /// A Binary data type.
        public let b: Data?
        /// A Boolean data type.
        public let bool: Bool?
        /// A Binary Set data type.
        public let bs: [Data]?
        /// A List data type.
        public let l: [AttributeValue]?
        /// A Map data type.
        public let m: [String: AttributeValue]?
        /// A Number data type.
        public let n: String?
        /// A Number Set data type.
        public let ns: [String]?
        /// A Null data type.
        public let null: Bool?
        /// A String data type.
        public let s: String?
        /// A String Set data type.
        public let ss: [String]?

        public init(b: Data? = nil, bool: Bool? = nil, bs: [Data]? = nil, l: [AttributeValue]? = nil, m: [String: AttributeValue]? = nil, n: String? = nil, ns: [String]? = nil, null: Bool? = nil, s: String? = nil, ss: [String]? = nil) {
            self.b = b
            self.bool = bool
            self.bs = bs
            self.l = l
            self.m = m
            self.n = n
            self.ns = ns
            self.null = null
            self.s = s
            self.ss = ss
        }

        private enum CodingKeys: String, CodingKey {
            case b = "B"
            case bool = "BOOL"
            case bs = "BS"
            case l = "L"
            case m = "M"
            case n = "N"
            case ns = "NS"
            case null = "NULL"
            case s = "S"
            case ss = "SS"
        }
    }

    public struct DescribeStreamInput: AWSShape {

        /// The shard ID of the first item that this operation will evaluate. Use the value that was returned for LastEvaluatedShardId in the previous operation. 
        public let exclusiveStartShardId: String?
        /// The maximum number of shard objects to return. The upper limit is 100.
        public let limit: Int?
        /// The Amazon Resource Name (ARN) for the stream.
        public let streamArn: String

        public init(exclusiveStartShardId: String? = nil, limit: Int? = nil, streamArn: String) {
            self.exclusiveStartShardId = exclusiveStartShardId
            self.limit = limit
            self.streamArn = streamArn
        }

        public func validate(name: String) throws {
            try validate(self.exclusiveStartShardId, name:"exclusiveStartShardId", parent: name, max: 65)
            try validate(self.exclusiveStartShardId, name:"exclusiveStartShardId", parent: name, min: 28)
            try validate(self.limit, name:"limit", parent: name, min: 1)
            try validate(self.streamArn, name:"streamArn", parent: name, max: 1024)
            try validate(self.streamArn, name:"streamArn", parent: name, min: 37)
        }

        private enum CodingKeys: String, CodingKey {
            case exclusiveStartShardId = "ExclusiveStartShardId"
            case limit = "Limit"
            case streamArn = "StreamArn"
        }
    }

    public struct DescribeStreamOutput: AWSShape {

        /// A complete description of the stream, including its creation date and time, the DynamoDB table associated with the stream, the shard IDs within the stream, and the beginning and ending sequence numbers of stream records within the shards.
        public let streamDescription: StreamDescription?

        public init(streamDescription: StreamDescription? = nil) {
            self.streamDescription = streamDescription
        }

        private enum CodingKeys: String, CodingKey {
            case streamDescription = "StreamDescription"
        }
    }

    public struct GetRecordsInput: AWSShape {

        /// The maximum number of records to return from the shard. The upper limit is 1000.
        public let limit: Int?
        /// A shard iterator that was retrieved from a previous GetShardIterator operation. This iterator can be used to access the stream records in this shard.
        public let shardIterator: String

        public init(limit: Int? = nil, shardIterator: String) {
            self.limit = limit
            self.shardIterator = shardIterator
        }

        public func validate(name: String) throws {
            try validate(self.limit, name:"limit", parent: name, min: 1)
            try validate(self.shardIterator, name:"shardIterator", parent: name, max: 2048)
            try validate(self.shardIterator, name:"shardIterator", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case shardIterator = "ShardIterator"
        }
    }

    public struct GetRecordsOutput: AWSShape {

        /// The next position in the shard from which to start sequentially reading stream records. If set to null, the shard has been closed and the requested iterator will not return any more data.
        public let nextShardIterator: String?
        /// The stream records from the shard, which were retrieved using the shard iterator.
        public let records: [Record]?

        public init(nextShardIterator: String? = nil, records: [Record]? = nil) {
            self.nextShardIterator = nextShardIterator
            self.records = records
        }

        private enum CodingKeys: String, CodingKey {
            case nextShardIterator = "NextShardIterator"
            case records = "Records"
        }
    }

    public struct GetShardIteratorInput: AWSShape {

        /// The sequence number of a stream record in the shard from which to start reading.
        public let sequenceNumber: String?
        /// The identifier of the shard. The iterator will be returned for this shard ID.
        public let shardId: String
        /// Determines how the shard iterator is used to start reading stream records from the shard:    AT_SEQUENCE_NUMBER - Start reading exactly from the position denoted by a specific sequence number.    AFTER_SEQUENCE_NUMBER - Start reading right after the position denoted by a specific sequence number.    TRIM_HORIZON - Start reading at the last (untrimmed) stream record, which is the oldest record in the shard. In DynamoDB Streams, there is a 24 hour limit on data retention. Stream records whose age exceeds this limit are subject to removal (trimming) from the stream.    LATEST - Start reading just after the most recent stream record in the shard, so that you always read the most recent data in the shard.  
        public let shardIteratorType: ShardIteratorType
        /// The Amazon Resource Name (ARN) for the stream.
        public let streamArn: String

        public init(sequenceNumber: String? = nil, shardId: String, shardIteratorType: ShardIteratorType, streamArn: String) {
            self.sequenceNumber = sequenceNumber
            self.shardId = shardId
            self.shardIteratorType = shardIteratorType
            self.streamArn = streamArn
        }

        public func validate(name: String) throws {
            try validate(self.sequenceNumber, name:"sequenceNumber", parent: name, max: 40)
            try validate(self.sequenceNumber, name:"sequenceNumber", parent: name, min: 21)
            try validate(self.shardId, name:"shardId", parent: name, max: 65)
            try validate(self.shardId, name:"shardId", parent: name, min: 28)
            try validate(self.streamArn, name:"streamArn", parent: name, max: 1024)
            try validate(self.streamArn, name:"streamArn", parent: name, min: 37)
        }

        private enum CodingKeys: String, CodingKey {
            case sequenceNumber = "SequenceNumber"
            case shardId = "ShardId"
            case shardIteratorType = "ShardIteratorType"
            case streamArn = "StreamArn"
        }
    }

    public struct GetShardIteratorOutput: AWSShape {

        /// The position in the shard from which to start reading stream records sequentially. A shard iterator specifies this position using the sequence number of a stream record in a shard.
        public let shardIterator: String?

        public init(shardIterator: String? = nil) {
            self.shardIterator = shardIterator
        }

        private enum CodingKeys: String, CodingKey {
            case shardIterator = "ShardIterator"
        }
    }

    public struct Identity: AWSShape {

        /// A unique identifier for the entity that made the call. For Time To Live, the principalId is "dynamodb.amazonaws.com".
        public let principalId: String?
        /// The type of the identity. For Time To Live, the type is "Service".
        public let `type`: String?

        public init(principalId: String? = nil, type: String? = nil) {
            self.principalId = principalId
            self.`type` = `type`
        }

        private enum CodingKeys: String, CodingKey {
            case principalId = "PrincipalId"
            case `type` = "Type"
        }
    }

    public struct KeySchemaElement: AWSShape {

        /// The name of a key attribute.
        public let attributeName: String
        /// The attribute data, consisting of the data type and the attribute value itself.
        public let keyType: KeyType

        public init(attributeName: String, keyType: KeyType) {
            self.attributeName = attributeName
            self.keyType = keyType
        }

        private enum CodingKeys: String, CodingKey {
            case attributeName = "AttributeName"
            case keyType = "KeyType"
        }
    }

    public struct ListStreamsInput: AWSShape {

        /// The ARN (Amazon Resource Name) of the first item that this operation will evaluate. Use the value that was returned for LastEvaluatedStreamArn in the previous operation. 
        public let exclusiveStartStreamArn: String?
        /// The maximum number of streams to return. The upper limit is 100.
        public let limit: Int?
        /// If this parameter is provided, then only the streams associated with this table name are returned.
        public let tableName: String?

        public init(exclusiveStartStreamArn: String? = nil, limit: Int? = nil, tableName: String? = nil) {
            self.exclusiveStartStreamArn = exclusiveStartStreamArn
            self.limit = limit
            self.tableName = tableName
        }

        public func validate(name: String) throws {
            try validate(self.exclusiveStartStreamArn, name:"exclusiveStartStreamArn", parent: name, max: 1024)
            try validate(self.exclusiveStartStreamArn, name:"exclusiveStartStreamArn", parent: name, min: 37)
            try validate(self.limit, name:"limit", parent: name, min: 1)
            try validate(self.tableName, name:"tableName", parent: name, max: 255)
            try validate(self.tableName, name:"tableName", parent: name, min: 3)
            try validate(self.tableName, name:"tableName", parent: name, pattern: "[a-zA-Z0-9_.-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case exclusiveStartStreamArn = "ExclusiveStartStreamArn"
            case limit = "Limit"
            case tableName = "TableName"
        }
    }

    public struct ListStreamsOutput: AWSShape {

        /// The stream ARN of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request. If LastEvaluatedStreamArn is empty, then the "last page" of results has been processed and there is no more data to be retrieved. If LastEvaluatedStreamArn is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when LastEvaluatedStreamArn is empty.
        public let lastEvaluatedStreamArn: String?
        /// A list of stream descriptors associated with the current account and endpoint.
        public let streams: [Stream]?

        public init(lastEvaluatedStreamArn: String? = nil, streams: [Stream]? = nil) {
            self.lastEvaluatedStreamArn = lastEvaluatedStreamArn
            self.streams = streams
        }

        private enum CodingKeys: String, CodingKey {
            case lastEvaluatedStreamArn = "LastEvaluatedStreamArn"
            case streams = "Streams"
        }
    }

    public struct Record: AWSShape {

        /// The region in which the GetRecords request was received.
        public let awsRegion: String?
        /// The main body of the stream record, containing all of the DynamoDB-specific fields.
        public let dynamodb: StreamRecord?
        /// A globally unique identifier for the event that was recorded in this stream record.
        public let eventID: String?
        /// The type of data modification that was performed on the DynamoDB table:    INSERT - a new item was added to the table.    MODIFY - one or more of an existing item's attributes were modified.    REMOVE - the item was deleted from the table  
        public let eventName: OperationType?
        /// The AWS service from which the stream record originated. For DynamoDB Streams, this is aws:dynamodb.
        public let eventSource: String?
        /// The version number of the stream record format. This number is updated whenever the structure of Record is modified. Client applications must not assume that eventVersion will remain at a particular value, as this number is subject to change at any time. In general, eventVersion will only increase as the low-level DynamoDB Streams API evolves.
        public let eventVersion: String?
        /// Items that are deleted by the Time to Live process after expiration have the following fields:    Records[].userIdentity.type "Service"   Records[].userIdentity.principalId "dynamodb.amazonaws.com"  
        public let userIdentity: Identity?

        public init(awsRegion: String? = nil, dynamodb: StreamRecord? = nil, eventID: String? = nil, eventName: OperationType? = nil, eventSource: String? = nil, eventVersion: String? = nil, userIdentity: Identity? = nil) {
            self.awsRegion = awsRegion
            self.dynamodb = dynamodb
            self.eventID = eventID
            self.eventName = eventName
            self.eventSource = eventSource
            self.eventVersion = eventVersion
            self.userIdentity = userIdentity
        }

        private enum CodingKeys: String, CodingKey {
            case awsRegion = "awsRegion"
            case dynamodb = "dynamodb"
            case eventID = "eventID"
            case eventName = "eventName"
            case eventSource = "eventSource"
            case eventVersion = "eventVersion"
            case userIdentity = "userIdentity"
        }
    }

    public struct SequenceNumberRange: AWSShape {

        /// The last sequence number.
        public let endingSequenceNumber: String?
        /// The first sequence number.
        public let startingSequenceNumber: String?

        public init(endingSequenceNumber: String? = nil, startingSequenceNumber: String? = nil) {
            self.endingSequenceNumber = endingSequenceNumber
            self.startingSequenceNumber = startingSequenceNumber
        }

        private enum CodingKeys: String, CodingKey {
            case endingSequenceNumber = "EndingSequenceNumber"
            case startingSequenceNumber = "StartingSequenceNumber"
        }
    }

    public struct Shard: AWSShape {

        /// The shard ID of the current shard's parent.
        public let parentShardId: String?
        /// The range of possible sequence numbers for the shard.
        public let sequenceNumberRange: SequenceNumberRange?
        /// The system-generated identifier for this shard.
        public let shardId: String?

        public init(parentShardId: String? = nil, sequenceNumberRange: SequenceNumberRange? = nil, shardId: String? = nil) {
            self.parentShardId = parentShardId
            self.sequenceNumberRange = sequenceNumberRange
            self.shardId = shardId
        }

        private enum CodingKeys: String, CodingKey {
            case parentShardId = "ParentShardId"
            case sequenceNumberRange = "SequenceNumberRange"
            case shardId = "ShardId"
        }
    }

    public struct Stream: AWSShape {

        /// The Amazon Resource Name (ARN) for the stream.
        public let streamArn: String?
        /// A timestamp, in ISO 8601 format, for this stream. Note that LatestStreamLabel is not a unique identifier for the stream, because it is possible that a stream from another table might have the same timestamp. However, the combination of the following three elements is guaranteed to be unique:   the AWS customer ID.   the table name   the StreamLabel   
        public let streamLabel: String?
        /// The DynamoDB table with which the stream is associated.
        public let tableName: String?

        public init(streamArn: String? = nil, streamLabel: String? = nil, tableName: String? = nil) {
            self.streamArn = streamArn
            self.streamLabel = streamLabel
            self.tableName = tableName
        }

        private enum CodingKeys: String, CodingKey {
            case streamArn = "StreamArn"
            case streamLabel = "StreamLabel"
            case tableName = "TableName"
        }
    }

    public struct StreamDescription: AWSShape {

        /// The date and time when the request to create this stream was issued.
        public let creationRequestDateTime: TimeStamp?
        /// The key attribute(s) of the stream's DynamoDB table.
        public let keySchema: [KeySchemaElement]?
        /// The shard ID of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request. If LastEvaluatedShardId is empty, then the "last page" of results has been processed and there is currently no more data to be retrieved. If LastEvaluatedShardId is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when LastEvaluatedShardId is empty.
        public let lastEvaluatedShardId: String?
        /// The shards that comprise the stream.
        public let shards: [Shard]?
        /// The Amazon Resource Name (ARN) for the stream.
        public let streamArn: String?
        /// A timestamp, in ISO 8601 format, for this stream. Note that LatestStreamLabel is not a unique identifier for the stream, because it is possible that a stream from another table might have the same timestamp. However, the combination of the following three elements is guaranteed to be unique:   the AWS customer ID.   the table name   the StreamLabel   
        public let streamLabel: String?
        /// Indicates the current status of the stream:    ENABLING - Streams is currently being enabled on the DynamoDB table.    ENABLED - the stream is enabled.    DISABLING - Streams is currently being disabled on the DynamoDB table.    DISABLED - the stream is disabled.  
        public let streamStatus: StreamStatus?
        /// Indicates the format of the records within this stream:    KEYS_ONLY - only the key attributes of items that were modified in the DynamoDB table.    NEW_IMAGE - entire items from the table, as they appeared after they were modified.    OLD_IMAGE - entire items from the table, as they appeared before they were modified.    NEW_AND_OLD_IMAGES - both the new and the old images of the items from the table.  
        public let streamViewType: StreamViewType?
        /// The DynamoDB table with which the stream is associated.
        public let tableName: String?

        public init(creationRequestDateTime: TimeStamp? = nil, keySchema: [KeySchemaElement]? = nil, lastEvaluatedShardId: String? = nil, shards: [Shard]? = nil, streamArn: String? = nil, streamLabel: String? = nil, streamStatus: StreamStatus? = nil, streamViewType: StreamViewType? = nil, tableName: String? = nil) {
            self.creationRequestDateTime = creationRequestDateTime
            self.keySchema = keySchema
            self.lastEvaluatedShardId = lastEvaluatedShardId
            self.shards = shards
            self.streamArn = streamArn
            self.streamLabel = streamLabel
            self.streamStatus = streamStatus
            self.streamViewType = streamViewType
            self.tableName = tableName
        }

        private enum CodingKeys: String, CodingKey {
            case creationRequestDateTime = "CreationRequestDateTime"
            case keySchema = "KeySchema"
            case lastEvaluatedShardId = "LastEvaluatedShardId"
            case shards = "Shards"
            case streamArn = "StreamArn"
            case streamLabel = "StreamLabel"
            case streamStatus = "StreamStatus"
            case streamViewType = "StreamViewType"
            case tableName = "TableName"
        }
    }

    public struct StreamRecord: AWSShape {

        /// The approximate date and time when the stream record was created, in UNIX epoch time format.
        public let approximateCreationDateTime: TimeStamp?
        /// The primary key attribute(s) for the DynamoDB item that was modified.
        public let keys: [String: AttributeValue]?
        /// The item in the DynamoDB table as it appeared after it was modified.
        public let newImage: [String: AttributeValue]?
        /// The item in the DynamoDB table as it appeared before it was modified.
        public let oldImage: [String: AttributeValue]?
        /// The sequence number of the stream record.
        public let sequenceNumber: String?
        /// The size of the stream record, in bytes.
        public let sizeBytes: Int64?
        /// The type of data from the modified DynamoDB item that was captured in this stream record:    KEYS_ONLY - only the key attributes of the modified item.    NEW_IMAGE - the entire item, as it appeared after it was modified.    OLD_IMAGE - the entire item, as it appeared before it was modified.    NEW_AND_OLD_IMAGES - both the new and the old item images of the item.  
        public let streamViewType: StreamViewType?

        public init(approximateCreationDateTime: TimeStamp? = nil, keys: [String: AttributeValue]? = nil, newImage: [String: AttributeValue]? = nil, oldImage: [String: AttributeValue]? = nil, sequenceNumber: String? = nil, sizeBytes: Int64? = nil, streamViewType: StreamViewType? = nil) {
            self.approximateCreationDateTime = approximateCreationDateTime
            self.keys = keys
            self.newImage = newImage
            self.oldImage = oldImage
            self.sequenceNumber = sequenceNumber
            self.sizeBytes = sizeBytes
            self.streamViewType = streamViewType
        }

        private enum CodingKeys: String, CodingKey {
            case approximateCreationDateTime = "ApproximateCreationDateTime"
            case keys = "Keys"
            case newImage = "NewImage"
            case oldImage = "OldImage"
            case sequenceNumber = "SequenceNumber"
            case sizeBytes = "SizeBytes"
            case streamViewType = "StreamViewType"
        }
    }
}
