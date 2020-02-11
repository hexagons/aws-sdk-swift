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
Client object for interacting with AWS MediaPackage service.

AWS Elemental MediaPackage
*/
public struct MediaPackage {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the MediaPackage client
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
        httpClientProvider: AWSClient.HTTPClientProvider = .useAWSClientShared
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "mediapackage",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-10-12",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [MediaPackageErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates a new Channel.
    public func createChannel(_ input: CreateChannelRequest) -> EventLoopFuture<CreateChannelResponse> {
        return client.send(operation: "CreateChannel", path: "/channels", httpMethod: "POST", input: input)
    }

    ///  Creates a new HarvestJob record.
    public func createHarvestJob(_ input: CreateHarvestJobRequest) -> EventLoopFuture<CreateHarvestJobResponse> {
        return client.send(operation: "CreateHarvestJob", path: "/harvest_jobs", httpMethod: "POST", input: input)
    }

    ///  Creates a new OriginEndpoint record.
    public func createOriginEndpoint(_ input: CreateOriginEndpointRequest) -> EventLoopFuture<CreateOriginEndpointResponse> {
        return client.send(operation: "CreateOriginEndpoint", path: "/origin_endpoints", httpMethod: "POST", input: input)
    }

    ///  Deletes an existing Channel.
    public func deleteChannel(_ input: DeleteChannelRequest) -> EventLoopFuture<DeleteChannelResponse> {
        return client.send(operation: "DeleteChannel", path: "/channels/{id}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an existing OriginEndpoint.
    public func deleteOriginEndpoint(_ input: DeleteOriginEndpointRequest) -> EventLoopFuture<DeleteOriginEndpointResponse> {
        return client.send(operation: "DeleteOriginEndpoint", path: "/origin_endpoints/{id}", httpMethod: "DELETE", input: input)
    }

    ///  Gets details about a Channel.
    public func describeChannel(_ input: DescribeChannelRequest) -> EventLoopFuture<DescribeChannelResponse> {
        return client.send(operation: "DescribeChannel", path: "/channels/{id}", httpMethod: "GET", input: input)
    }

    ///  Gets details about an existing HarvestJob.
    public func describeHarvestJob(_ input: DescribeHarvestJobRequest) -> EventLoopFuture<DescribeHarvestJobResponse> {
        return client.send(operation: "DescribeHarvestJob", path: "/harvest_jobs/{id}", httpMethod: "GET", input: input)
    }

    ///  Gets details about an existing OriginEndpoint.
    public func describeOriginEndpoint(_ input: DescribeOriginEndpointRequest) -> EventLoopFuture<DescribeOriginEndpointResponse> {
        return client.send(operation: "DescribeOriginEndpoint", path: "/origin_endpoints/{id}", httpMethod: "GET", input: input)
    }

    ///  Returns a collection of Channels.
    public func listChannels(_ input: ListChannelsRequest) -> EventLoopFuture<ListChannelsResponse> {
        return client.send(operation: "ListChannels", path: "/channels", httpMethod: "GET", input: input)
    }

    ///  Returns a collection of HarvestJob records.
    public func listHarvestJobs(_ input: ListHarvestJobsRequest) -> EventLoopFuture<ListHarvestJobsResponse> {
        return client.send(operation: "ListHarvestJobs", path: "/harvest_jobs", httpMethod: "GET", input: input)
    }

    ///  Returns a collection of OriginEndpoint records.
    public func listOriginEndpoints(_ input: ListOriginEndpointsRequest) -> EventLoopFuture<ListOriginEndpointsResponse> {
        return client.send(operation: "ListOriginEndpoints", path: "/origin_endpoints", httpMethod: "GET", input: input)
    }

    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/tags/{resource-arn}", httpMethod: "GET", input: input)
    }

    ///  Changes the Channel's first IngestEndpoint's username and password. WARNING - This API is deprecated. Please use RotateIngestEndpointCredentials instead
    @available(*, deprecated, message:"This API is deprecated. Please use RotateIngestEndpointCredentials instead")
    public func rotateChannelCredentials(_ input: RotateChannelCredentialsRequest) -> EventLoopFuture<RotateChannelCredentialsResponse> {
        return client.send(operation: "RotateChannelCredentials", path: "/channels/{id}/credentials", httpMethod: "PUT", input: input)
    }

    ///  Rotate the IngestEndpoint's username and password, as specified by the IngestEndpoint's id.
    public func rotateIngestEndpointCredentials(_ input: RotateIngestEndpointCredentialsRequest) -> EventLoopFuture<RotateIngestEndpointCredentialsResponse> {
        return client.send(operation: "RotateIngestEndpointCredentials", path: "/channels/{id}/ingest_endpoints/{ingest_endpoint_id}/credentials", httpMethod: "PUT", input: input)
    }

    @discardableResult public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "TagResource", path: "/tags/{resource-arn}", httpMethod: "POST", input: input)
    }

    @discardableResult public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "UntagResource", path: "/tags/{resource-arn}", httpMethod: "DELETE", input: input)
    }

    ///  Updates an existing Channel.
    public func updateChannel(_ input: UpdateChannelRequest) -> EventLoopFuture<UpdateChannelResponse> {
        return client.send(operation: "UpdateChannel", path: "/channels/{id}", httpMethod: "PUT", input: input)
    }

    ///  Updates an existing OriginEndpoint.
    public func updateOriginEndpoint(_ input: UpdateOriginEndpointRequest) -> EventLoopFuture<UpdateOriginEndpointResponse> {
        return client.send(operation: "UpdateOriginEndpoint", path: "/origin_endpoints/{id}", httpMethod: "PUT", input: input)
    }
}
