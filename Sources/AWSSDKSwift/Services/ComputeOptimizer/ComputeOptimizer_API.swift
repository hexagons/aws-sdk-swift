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
Client object for interacting with AWS ComputeOptimizer service.

AWS Compute Optimizer is a service that analyzes the configuration and utilization metrics of your AWS resources, such as EC2 instances and Auto Scaling groups. It reports whether your resources are optimal, and generates optimization recommendations to reduce the cost and improve the performance of your workloads. Compute Optimizer also provides recent utilization metric data, as well as projected utilization metric data for the recommendations, which you can use to evaluate which recommendation provides the best price-performance trade-off. The analysis of your usage patterns can help you decide when to move or resize your running resources, and still meet your performance and capacity requirements. For more information about Compute Optimizer, see the AWS Compute Optimizer User Guide.
*/
public struct ComputeOptimizer {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the ComputeOptimizer client
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
            amzTarget: "ComputeOptimizerService",
            service: "compute-optimizer",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 0)),
            apiVersion: "2019-11-01",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [ComputeOptimizerErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Returns Auto Scaling group recommendations. AWS Compute Optimizer currently generates recommendations for Auto Scaling groups that are configured to run instances of the M, C, R, T, and X instance families. The service does not generate recommendations for Auto Scaling groups that have a scaling policy attached to them, or that do not have the same values for desired, minimum, and maximum capacity. In order for Compute Optimizer to analyze your Auto Scaling groups, they must be of a fixed size. For more information, see the AWS Compute Optimizer User Guide.
    public func getAutoScalingGroupRecommendations(_ input: GetAutoScalingGroupRecommendationsRequest) -> EventLoopFuture<GetAutoScalingGroupRecommendationsResponse> {
        return client.send(operation: "GetAutoScalingGroupRecommendations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns Amazon EC2 instance recommendations. AWS Compute Optimizer currently generates recommendations for Amazon Elastic Compute Cloud (Amazon EC2) and Amazon EC2 Auto Scaling. It generates recommendations for M, C, R, T, and X instance families. For more information, see the AWS Compute Optimizer User Guide.
    public func getEC2InstanceRecommendations(_ input: GetEC2InstanceRecommendationsRequest) -> EventLoopFuture<GetEC2InstanceRecommendationsResponse> {
        return client.send(operation: "GetEC2InstanceRecommendations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the projected utilization metrics of Amazon EC2 instance recommendations.
    public func getEC2RecommendationProjectedMetrics(_ input: GetEC2RecommendationProjectedMetricsRequest) -> EventLoopFuture<GetEC2RecommendationProjectedMetricsResponse> {
        return client.send(operation: "GetEC2RecommendationProjectedMetrics", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the enrollment (opt in) status of an account to the AWS Compute Optimizer service. If the account is a master account of an organization, this operation also confirms the enrollment status of member accounts within the organization.
    public func getEnrollmentStatus(_ input: GetEnrollmentStatusRequest) -> EventLoopFuture<GetEnrollmentStatusResponse> {
        return client.send(operation: "GetEnrollmentStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the optimization findings for an account. For example, it returns the number of Amazon EC2 instances in an account that are under-provisioned, over-provisioned, or optimized. It also returns the number of Auto Scaling groups in an account that are not optimized, or optimized.
    public func getRecommendationSummaries(_ input: GetRecommendationSummariesRequest) -> EventLoopFuture<GetRecommendationSummariesResponse> {
        return client.send(operation: "GetRecommendationSummaries", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the enrollment (opt in) status of an account to the AWS Compute Optimizer service. If the account is a master account of an organization, this operation can also enroll member accounts within the organization.
    public func updateEnrollmentStatus(_ input: UpdateEnrollmentStatusRequest) -> EventLoopFuture<UpdateEnrollmentStatusResponse> {
        return client.send(operation: "UpdateEnrollmentStatus", path: "/", httpMethod: "POST", input: input)
    }
}
