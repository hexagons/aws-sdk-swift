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

extension ServerlessApplicationRepository {

    ///  Retrieves the list of applications nested in the containing application.
    public func listApplicationDependenciesPaginator(_ input: ListApplicationDependenciesRequest, onPage: @escaping (ListApplicationDependenciesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listApplicationDependencies, tokenKey: \ListApplicationDependenciesResponse.nextToken, onPage: onPage)
    }

    ///  Lists versions for the specified application.
    public func listApplicationVersionsPaginator(_ input: ListApplicationVersionsRequest, onPage: @escaping (ListApplicationVersionsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listApplicationVersions, tokenKey: \ListApplicationVersionsResponse.nextToken, onPage: onPage)
    }

    ///  Lists applications owned by the requester.
    public func listApplicationsPaginator(_ input: ListApplicationsRequest, onPage: @escaping (ListApplicationsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listApplications, tokenKey: \ListApplicationsResponse.nextToken, onPage: onPage)
    }

}

extension ServerlessApplicationRepository.ListApplicationDependenciesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServerlessApplicationRepository.ListApplicationDependenciesRequest {
        return .init(
            applicationId: self.applicationId, 
            maxItems: self.maxItems, 
            nextToken: token, 
            semanticVersion: self.semanticVersion
        )

    }
}

extension ServerlessApplicationRepository.ListApplicationVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServerlessApplicationRepository.ListApplicationVersionsRequest {
        return .init(
            applicationId: self.applicationId, 
            maxItems: self.maxItems, 
            nextToken: token
        )

    }
}

extension ServerlessApplicationRepository.ListApplicationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ServerlessApplicationRepository.ListApplicationsRequest {
        return .init(
            maxItems: self.maxItems, 
            nextToken: token
        )

    }
}


