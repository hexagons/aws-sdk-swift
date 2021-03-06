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

extension ElasticBeanstalk {

    ///  Returns list of event descriptions matching criteria up to the last 6 weeks.  This action returns the most recent 1,000 events from the specified NextToken. 
    public func describeEventsPaginator(_ input: DescribeEventsMessage, onPage: @escaping (EventDescriptionsMessage, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeEvents, tokenKey: \EventDescriptionsMessage.nextToken, onPage: onPage)
    }

}

extension ElasticBeanstalk.DescribeEventsMessage: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticBeanstalk.DescribeEventsMessage {
        return .init(
            applicationName: self.applicationName, 
            endTime: self.endTime, 
            environmentId: self.environmentId, 
            environmentName: self.environmentName, 
            maxRecords: self.maxRecords, 
            nextToken: token, 
            platformArn: self.platformArn, 
            requestId: self.requestId, 
            severity: self.severity, 
            startTime: self.startTime, 
            templateName: self.templateName, 
            versionLabel: self.versionLabel
        )

    }
}


