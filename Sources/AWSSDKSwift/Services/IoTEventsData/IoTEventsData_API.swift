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

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS IoTEventsData service.

AWS IoT Events monitors your equipment or device fleets for failures or changes in operation, and triggers actions when such events occur. AWS IoT Events Data API commands enable you to send inputs to detectors, list detectors, and view or update a detector's status.
*/
public struct IoTEventsData {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the IoTEventsData client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - eventLoopGroupProvider: EventLoopGroup to use. Use `useAWSClientShared` if the client shall manage its own EventLoopGroup.
    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "data.iotevents",
            signingName: "ioteventsdata",
            serviceProtocol: ServiceProtocol(type: .restjson),
            apiVersion: "2018-10-23",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [IoTEventsDataErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Sends a set of messages to the AWS IoT Events system. Each message payload is transformed into the input you specify ("inputName") and ingested into any detectors that monitor that input. If multiple messages are sent, the order in which the messages are processed isn't guaranteed. To guarantee ordering, you must send messages one at a time and wait for a successful response.
    public func batchPutMessage(_ input: BatchPutMessageRequest) -> EventLoopFuture<BatchPutMessageResponse> {
        return client.send(operation: "BatchPutMessage", path: "/inputs/messages", httpMethod: "POST", input: input)
    }

    ///  Updates the state, variable values, and timer settings of one or more detectors (instances) of a specified detector model.
    public func batchUpdateDetector(_ input: BatchUpdateDetectorRequest) -> EventLoopFuture<BatchUpdateDetectorResponse> {
        return client.send(operation: "BatchUpdateDetector", path: "/detectors", httpMethod: "POST", input: input)
    }

    ///  Returns information about the specified detector (instance).
    public func describeDetector(_ input: DescribeDetectorRequest) -> EventLoopFuture<DescribeDetectorResponse> {
        return client.send(operation: "DescribeDetector", path: "/detectors/{detectorModelName}/keyValues/", httpMethod: "GET", input: input)
    }

    ///  Lists detectors (the instances of a detector model).
    public func listDetectors(_ input: ListDetectorsRequest) -> EventLoopFuture<ListDetectorsResponse> {
        return client.send(operation: "ListDetectors", path: "/detectors/{detectorModelName}", httpMethod: "GET", input: input)
    }
}
