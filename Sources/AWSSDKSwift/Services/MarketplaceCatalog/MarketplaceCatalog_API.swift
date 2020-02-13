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
Client object for interacting with AWS MarketplaceCatalog service.

Catalog API actions allow you to create, describe, list, and delete changes to your published entities. An entity is a product or an offer on AWS Marketplace. You can automate your entity update process by integrating the AWS Marketplace Catalog API with your AWS Marketplace product build or deployment pipelines. You can also create your own applications on top of the Catalog API to manage your products on AWS Marketplace.
*/
public struct MarketplaceCatalog {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the MarketplaceCatalog client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `useAWSClientShared` if the client shall manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        endpoint: String? = nil,
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "catalog.marketplace",
            signingName: "aws-marketplace",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-09-17",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [MarketplaceCatalogErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Used to cancel an open change request. Must be sent before the status of the request changes to APPLYING, the final stage of completing your change request. You can describe a change during the 60-day request history retention period for API calls.
    public func cancelChangeSet(_ input: CancelChangeSetRequest) -> EventLoopFuture<CancelChangeSetResponse> {
        return client.send(operation: "CancelChangeSet", path: "/CancelChangeSet", httpMethod: "PATCH", input: input)
    }

    ///  Provides information about a given change set.
    public func describeChangeSet(_ input: DescribeChangeSetRequest) -> EventLoopFuture<DescribeChangeSetResponse> {
        return client.send(operation: "DescribeChangeSet", path: "/DescribeChangeSet", httpMethod: "GET", input: input)
    }

    ///  Returns the metadata and content of the entity.
    public func describeEntity(_ input: DescribeEntityRequest) -> EventLoopFuture<DescribeEntityResponse> {
        return client.send(operation: "DescribeEntity", path: "/DescribeEntity", httpMethod: "GET", input: input)
    }

    ///  Returns the list of change sets owned by the account being used to make the call. You can filter this list by providing any combination of entityId, ChangeSetName, and status. If you provide more than one filter, the API operation applies a logical AND between the filters. You can describe a change during the 60-day request history retention period for API calls.
    public func listChangeSets(_ input: ListChangeSetsRequest) -> EventLoopFuture<ListChangeSetsResponse> {
        return client.send(operation: "ListChangeSets", path: "/ListChangeSets", httpMethod: "POST", input: input)
    }

    ///  Provides the list of entities of a given type.
    public func listEntities(_ input: ListEntitiesRequest) -> EventLoopFuture<ListEntitiesResponse> {
        return client.send(operation: "ListEntities", path: "/ListEntities", httpMethod: "POST", input: input)
    }

    ///  This operation allows you to request changes in your entities.
    public func startChangeSet(_ input: StartChangeSetRequest) -> EventLoopFuture<StartChangeSetResponse> {
        return client.send(operation: "StartChangeSet", path: "/StartChangeSet", httpMethod: "POST", input: input)
    }
}
