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

extension Transfer {

    ///  Lists the Secure File Transfer Protocol (SFTP) servers that are associated with your AWS account.
    public func listServersPaginator(_ input: ListServersRequest, onPage: @escaping (ListServersResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listServers, tokenKey: \ListServersResponse.nextToken, onPage: onPage)
    }

    ///  Lists all of the tags associated with the Amazon Resource Number (ARN) you specify. The resource can be a user, server, or role.
    public func listTagsForResourcePaginator(_ input: ListTagsForResourceRequest, onPage: @escaping (ListTagsForResourceResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTagsForResource, tokenKey: \ListTagsForResourceResponse.nextToken, onPage: onPage)
    }

    ///  Lists the users for the server that you specify by passing the ServerId parameter.
    public func listUsersPaginator(_ input: ListUsersRequest, onPage: @escaping (ListUsersResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listUsers, tokenKey: \ListUsersResponse.nextToken, onPage: onPage)
    }

}

extension Transfer.ListServersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Transfer.ListServersRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension Transfer.ListTagsForResourceRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Transfer.ListTagsForResourceRequest {
        return .init(
            arn: self.arn, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension Transfer.ListUsersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Transfer.ListUsersRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            serverId: self.serverId
        )

    }
}


