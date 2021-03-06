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
Client object for interacting with AWS Outposts service.

AWS Outposts is a fully-managed service that extends AWS infrastructure, APIs, and tools to customer premises. By providing local access to AWS-managed infrastructure, AWS Outposts enables customers to build and run applications on premises using the same programming interfaces as in AWS Regions, while using local compute and storage resources for lower latency and local data processing needs.
*/
public struct Outposts {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the Outposts client
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
            service: "outposts",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2019-12-03",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [OutpostsErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates an Outpost.
    public func createOutpost(_ input: CreateOutpostInput) -> EventLoopFuture<CreateOutpostOutput> {
        return client.send(operation: "CreateOutpost", path: "/outposts", httpMethod: "POST", input: input)
    }

    ///  Deletes the Outpost.
    public func deleteOutpost(_ input: DeleteOutpostInput) -> EventLoopFuture<DeleteOutpostOutput> {
        return client.send(operation: "DeleteOutpost", path: "/outposts/{OutpostId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the site.
    public func deleteSite(_ input: DeleteSiteInput) -> EventLoopFuture<DeleteSiteOutput> {
        return client.send(operation: "DeleteSite", path: "/sites/{SiteId}", httpMethod: "DELETE", input: input)
    }

    ///  Gets information about the specified Outpost.
    public func getOutpost(_ input: GetOutpostInput) -> EventLoopFuture<GetOutpostOutput> {
        return client.send(operation: "GetOutpost", path: "/outposts/{OutpostId}", httpMethod: "GET", input: input)
    }

    ///  Lists the instance types for the specified Outpost.
    public func getOutpostInstanceTypes(_ input: GetOutpostInstanceTypesInput) -> EventLoopFuture<GetOutpostInstanceTypesOutput> {
        return client.send(operation: "GetOutpostInstanceTypes", path: "/outposts/{OutpostId}/instanceTypes", httpMethod: "GET", input: input)
    }

    ///  List the Outposts for your AWS account.
    public func listOutposts(_ input: ListOutpostsInput) -> EventLoopFuture<ListOutpostsOutput> {
        return client.send(operation: "ListOutposts", path: "/outposts", httpMethod: "GET", input: input)
    }

    ///  Lists the sites for the specified AWS account.
    public func listSites(_ input: ListSitesInput) -> EventLoopFuture<ListSitesOutput> {
        return client.send(operation: "ListSites", path: "/sites", httpMethod: "GET", input: input)
    }
}
