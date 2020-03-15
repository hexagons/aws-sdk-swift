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

extension EBS {
    //MARK: Enums

    public enum ChecksumAlgorithm: String, CustomStringConvertible, Codable {
        case sha256 = "SHA256"
        public var description: String { return self.rawValue }
    }

    //MARK: Shapes

    public struct Block: AWSDecodableShape {

        /// The block index.
        public let blockIndex: Int?
        /// The block token for the block index.
        public let blockToken: String?

        public init(blockIndex: Int? = nil, blockToken: String? = nil) {
            self.blockIndex = blockIndex
            self.blockToken = blockToken
        }

        private enum CodingKeys: String, CodingKey {
            case blockIndex = "BlockIndex"
            case blockToken = "BlockToken"
        }
    }

    public struct ChangedBlock: AWSDecodableShape {

        /// The block index.
        public let blockIndex: Int?
        /// The block token for the block index of the FirstSnapshotId specified in the ListChangedBlocks operation. This value is absent if the first snapshot does not have the changed block that is on the second snapshot.
        public let firstBlockToken: String?
        /// The block token for the block index of the SecondSnapshotId specified in the ListChangedBlocks operation.
        public let secondBlockToken: String?

        public init(blockIndex: Int? = nil, firstBlockToken: String? = nil, secondBlockToken: String? = nil) {
            self.blockIndex = blockIndex
            self.firstBlockToken = firstBlockToken
            self.secondBlockToken = secondBlockToken
        }

        private enum CodingKeys: String, CodingKey {
            case blockIndex = "BlockIndex"
            case firstBlockToken = "FirstBlockToken"
            case secondBlockToken = "SecondBlockToken"
        }
    }

    public struct GetSnapshotBlockRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "blockIndex", location: .uri(locationName: "blockIndex")), 
            AWSMemberEncoding(label: "blockToken", location: .querystring(locationName: "blockToken")), 
            AWSMemberEncoding(label: "snapshotId", location: .uri(locationName: "snapshotId"))
        ]

        /// The block index of the block from which to get data. Obtain the BlockIndex by running the ListChangedBlocks or ListSnapshotBlocks operations.
        public let blockIndex: Int
        /// The block token of the block from which to get data. Obtain the BlockToken by running the ListChangedBlocks or ListSnapshotBlocks operations.
        public let blockToken: String
        /// The ID of the snapshot containing the block from which to get data.
        public let snapshotId: String

        public init(blockIndex: Int, blockToken: String, snapshotId: String) {
            self.blockIndex = blockIndex
            self.blockToken = blockToken
            self.snapshotId = snapshotId
        }

        public func validate(name: String) throws {
            try validate(self.blockToken, name:"blockToken", parent: name, max: 256)
            try validate(self.blockToken, name:"blockToken", parent: name, pattern: "^[A-Za-z0-9+/=]+$")
            try validate(self.snapshotId, name:"snapshotId", parent: name, max: 64)
            try validate(self.snapshotId, name:"snapshotId", parent: name, min: 1)
            try validate(self.snapshotId, name:"snapshotId", parent: name, pattern: "^snap-[0-9a-f]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case blockIndex = "blockIndex"
            case blockToken = "blockToken"
            case snapshotId = "snapshotId"
        }
    }

    public struct GetSnapshotBlockResponse: AWSDecodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let payloadPath: String? = "blockData"
        public static var _encoding = [
            AWSMemberEncoding(label: "blockData", location: .body(locationName: "BlockData"), encoding: .blob), 
            AWSMemberEncoding(label: "checksum", location: .header(locationName: "x-amz-Checksum")), 
            AWSMemberEncoding(label: "checksumAlgorithm", location: .header(locationName: "x-amz-Checksum-Algorithm")), 
            AWSMemberEncoding(label: "dataLength", location: .header(locationName: "x-amz-Data-Length"))
        ]

        /// The data content of the block.
        public let blockData: Data?
        /// The checksum generated for the block, which is Base64 encoded.
        public let checksum: String?
        /// The algorithm used to generate the checksum for the block, such as SHA256.
        public let checksumAlgorithm: ChecksumAlgorithm?
        /// The size of the data in the block.
        public let dataLength: Int?

        public init(blockData: Data? = nil, checksum: String? = nil, checksumAlgorithm: ChecksumAlgorithm? = nil, dataLength: Int? = nil) {
            self.blockData = blockData
            self.checksum = checksum
            self.checksumAlgorithm = checksumAlgorithm
            self.dataLength = dataLength
        }

        private enum CodingKeys: String, CodingKey {
            case blockData = "BlockData"
            case checksum = "x-amz-Checksum"
            case checksumAlgorithm = "x-amz-Checksum-Algorithm"
            case dataLength = "x-amz-Data-Length"
        }
    }

    public struct ListChangedBlocksRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "firstSnapshotId", location: .querystring(locationName: "firstSnapshotId")), 
            AWSMemberEncoding(label: "maxResults", location: .querystring(locationName: "maxResults")), 
            AWSMemberEncoding(label: "nextToken", location: .querystring(locationName: "pageToken")), 
            AWSMemberEncoding(label: "secondSnapshotId", location: .uri(locationName: "secondSnapshotId")), 
            AWSMemberEncoding(label: "startingBlockIndex", location: .querystring(locationName: "startingBlockIndex"))
        ]

        /// The ID of the first snapshot to use for the comparison.  The FirstSnapshotID parameter must be specified with a SecondSnapshotId parameter; otherwise, an error occurs. 
        public let firstSnapshotId: String?
        /// The number of results to return.
        public let maxResults: Int?
        /// The token to request the next page of results.
        public let nextToken: String?
        /// The ID of the second snapshot to use for the comparison.  The SecondSnapshotId parameter must be specified with a FirstSnapshotID parameter; otherwise, an error occurs. 
        public let secondSnapshotId: String
        /// The block index from which the comparison should start. The list in the response will start from this block index or the next valid block index in the snapshots.
        public let startingBlockIndex: Int?

        public init(firstSnapshotId: String? = nil, maxResults: Int? = nil, nextToken: String? = nil, secondSnapshotId: String, startingBlockIndex: Int? = nil) {
            self.firstSnapshotId = firstSnapshotId
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.secondSnapshotId = secondSnapshotId
            self.startingBlockIndex = startingBlockIndex
        }

        public func validate(name: String) throws {
            try validate(self.firstSnapshotId, name:"firstSnapshotId", parent: name, max: 64)
            try validate(self.firstSnapshotId, name:"firstSnapshotId", parent: name, min: 1)
            try validate(self.firstSnapshotId, name:"firstSnapshotId", parent: name, pattern: "^snap-[0-9a-f]+$")
            try validate(self.maxResults, name:"maxResults", parent: name, max: 10000)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 100)
            try validate(self.nextToken, name:"nextToken", parent: name, max: 256)
            try validate(self.nextToken, name:"nextToken", parent: name, pattern: "^[A-Za-z0-9+/=]+$")
            try validate(self.secondSnapshotId, name:"secondSnapshotId", parent: name, max: 64)
            try validate(self.secondSnapshotId, name:"secondSnapshotId", parent: name, min: 1)
            try validate(self.secondSnapshotId, name:"secondSnapshotId", parent: name, pattern: "^snap-[0-9a-f]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case firstSnapshotId = "firstSnapshotId"
            case maxResults = "maxResults"
            case nextToken = "pageToken"
            case secondSnapshotId = "secondSnapshotId"
            case startingBlockIndex = "startingBlockIndex"
        }
    }

    public struct ListChangedBlocksResponse: AWSDecodableShape {

        /// The size of the block.
        public let blockSize: Int?
        /// An array of objects containing information about the changed blocks.
        public let changedBlocks: [ChangedBlock]?
        /// The time when the BlockToken expires.
        public let expiryTime: TimeStamp?
        /// The token to use to retrieve the next page of results. This value is null when there are no more results to return.
        public let nextToken: String?
        /// The size of the volume in GB.
        public let volumeSize: Int64?

        public init(blockSize: Int? = nil, changedBlocks: [ChangedBlock]? = nil, expiryTime: TimeStamp? = nil, nextToken: String? = nil, volumeSize: Int64? = nil) {
            self.blockSize = blockSize
            self.changedBlocks = changedBlocks
            self.expiryTime = expiryTime
            self.nextToken = nextToken
            self.volumeSize = volumeSize
        }

        private enum CodingKeys: String, CodingKey {
            case blockSize = "BlockSize"
            case changedBlocks = "ChangedBlocks"
            case expiryTime = "ExpiryTime"
            case nextToken = "NextToken"
            case volumeSize = "VolumeSize"
        }
    }

    public struct ListSnapshotBlocksRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring(locationName: "maxResults")), 
            AWSMemberEncoding(label: "nextToken", location: .querystring(locationName: "pageToken")), 
            AWSMemberEncoding(label: "snapshotId", location: .uri(locationName: "snapshotId")), 
            AWSMemberEncoding(label: "startingBlockIndex", location: .querystring(locationName: "startingBlockIndex"))
        ]

        /// The number of results to return.
        public let maxResults: Int?
        /// The token to request the next page of results.
        public let nextToken: String?
        /// The ID of the snapshot from which to get block indexes and block tokens.
        public let snapshotId: String
        /// The block index from which the list should start. The list in the response will start from this block index or the next valid block index in the snapshot.
        public let startingBlockIndex: Int?

        public init(maxResults: Int? = nil, nextToken: String? = nil, snapshotId: String, startingBlockIndex: Int? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.snapshotId = snapshotId
            self.startingBlockIndex = startingBlockIndex
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name:"maxResults", parent: name, max: 10000)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 100)
            try validate(self.nextToken, name:"nextToken", parent: name, max: 256)
            try validate(self.nextToken, name:"nextToken", parent: name, pattern: "^[A-Za-z0-9+/=]+$")
            try validate(self.snapshotId, name:"snapshotId", parent: name, max: 64)
            try validate(self.snapshotId, name:"snapshotId", parent: name, min: 1)
            try validate(self.snapshotId, name:"snapshotId", parent: name, pattern: "^snap-[0-9a-f]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "maxResults"
            case nextToken = "pageToken"
            case snapshotId = "snapshotId"
            case startingBlockIndex = "startingBlockIndex"
        }
    }

    public struct ListSnapshotBlocksResponse: AWSDecodableShape {

        /// An array of objects containing information about the blocks.
        public let blocks: [Block]?
        /// The size of the block.
        public let blockSize: Int?
        /// The time when the BlockToken expires.
        public let expiryTime: TimeStamp?
        /// The token to use to retrieve the next page of results. This value is null when there are no more results to return.
        public let nextToken: String?
        /// The size of the volume in GB.
        public let volumeSize: Int64?

        public init(blocks: [Block]? = nil, blockSize: Int? = nil, expiryTime: TimeStamp? = nil, nextToken: String? = nil, volumeSize: Int64? = nil) {
            self.blocks = blocks
            self.blockSize = blockSize
            self.expiryTime = expiryTime
            self.nextToken = nextToken
            self.volumeSize = volumeSize
        }

        private enum CodingKeys: String, CodingKey {
            case blocks = "Blocks"
            case blockSize = "BlockSize"
            case expiryTime = "ExpiryTime"
            case nextToken = "NextToken"
            case volumeSize = "VolumeSize"
        }
    }
}
