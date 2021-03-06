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

import NIO

//MARK: Paginators

extension CloudFront {

    ///  Lists origin access identities.
    public func listCloudFrontOriginAccessIdentitiesPaginator(_ input: ListCloudFrontOriginAccessIdentitiesRequest, onPage: @escaping (ListCloudFrontOriginAccessIdentitiesResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listCloudFrontOriginAccessIdentities, tokenKey: \ListCloudFrontOriginAccessIdentitiesResult.cloudFrontOriginAccessIdentityList?.nextMarker, onPage: onPage)
    }

    ///  List CloudFront distributions.
    public func listDistributionsPaginator(_ input: ListDistributionsRequest, onPage: @escaping (ListDistributionsResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDistributions, tokenKey: \ListDistributionsResult.distributionList?.nextMarker, onPage: onPage)
    }

    ///  Lists invalidation batches. 
    public func listInvalidationsPaginator(_ input: ListInvalidationsRequest, onPage: @escaping (ListInvalidationsResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listInvalidations, tokenKey: \ListInvalidationsResult.invalidationList?.nextMarker, onPage: onPage)
    }

    ///  List streaming distributions. 
    public func listStreamingDistributionsPaginator(_ input: ListStreamingDistributionsRequest, onPage: @escaping (ListStreamingDistributionsResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listStreamingDistributions, tokenKey: \ListStreamingDistributionsResult.streamingDistributionList?.nextMarker, onPage: onPage)
    }

}

extension CloudFront.ListCloudFrontOriginAccessIdentitiesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudFront.ListCloudFrontOriginAccessIdentitiesRequest {
        return .init(
            marker: token, 
            maxItems: self.maxItems
        )

    }
}

extension CloudFront.ListDistributionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudFront.ListDistributionsRequest {
        return .init(
            marker: token, 
            maxItems: self.maxItems
        )

    }
}

extension CloudFront.ListInvalidationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudFront.ListInvalidationsRequest {
        return .init(
            distributionId: self.distributionId, 
            marker: token, 
            maxItems: self.maxItems
        )

    }
}

extension CloudFront.ListStreamingDistributionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudFront.ListStreamingDistributionsRequest {
        return .init(
            marker: token, 
            maxItems: self.maxItems
        )

    }
}


