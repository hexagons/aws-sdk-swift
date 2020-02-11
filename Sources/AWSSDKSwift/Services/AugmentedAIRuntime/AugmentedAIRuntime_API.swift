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
Client object for interacting with AWS AugmentedAIRuntime service.

Amazon Augmented AI (Augmented AI) (Preview) is a service that adds human judgment to any machine learning application. Human reviewers can take over when an AI application can't evaluate data with a high degree of confidence. From fraudulent bank transaction identification to document processing to image analysis, machine learning models can be trained to make decisions as well as or better than a human. Nevertheless, some decisions require contextual interpretation, such as when you need to decide whether an image is appropriate for a given audience. Content moderation guidelines are nuanced and highly dependent on context, and they vary between countries. When trying to apply AI in these situations, you can be forced to choose between "ML only" systems with unacceptably high error rates or "human only" systems that are expensive and difficult to scale, and that slow down decision making. This API reference includes information about API actions and data types you can use to interact with Augmented AI programmatically.  You can create a flow definition against the Augmented AI API. Provide the Amazon Resource Name (ARN) of a flow definition to integrate AI service APIs, such as Textract.AnalyzeDocument and Rekognition.DetectModerationLabels. These AI services, in turn, invoke the StartHumanLoop API, which evaluates conditions under which humans will be invoked. If humans are required, Augmented AI creates a human loop. Results of human work are available asynchronously in Amazon Simple Storage Service (Amazon S3). You can use Amazon CloudWatch Events to detect human work results. You can find additional Augmented AI API documentation in the following reference guides: Amazon Rekognition, Amazon SageMaker, and Amazon Textract.
*/
public struct AugmentedAIRuntime {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the AugmentedAIRuntime client
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
            service: "a2i-runtime.sagemaker",
            signingName: "sagemaker",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2019-11-07",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [AugmentedAIRuntimeErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Deletes the specified human loop for a flow definition.
    public func deleteHumanLoop(_ input: DeleteHumanLoopRequest) -> EventLoopFuture<DeleteHumanLoopResponse> {
        return client.send(operation: "DeleteHumanLoop", path: "/human-loops/{HumanLoopName}", httpMethod: "DELETE", input: input)
    }

    ///  Returns information about the specified human loop.
    public func describeHumanLoop(_ input: DescribeHumanLoopRequest) -> EventLoopFuture<DescribeHumanLoopResponse> {
        return client.send(operation: "DescribeHumanLoop", path: "/human-loops/{HumanLoopName}", httpMethod: "GET", input: input)
    }

    ///  Returns information about human loops, given the specified parameters. If a human loop was deleted, it will not be included.
    public func listHumanLoops(_ input: ListHumanLoopsRequest) -> EventLoopFuture<ListHumanLoopsResponse> {
        return client.send(operation: "ListHumanLoops", path: "/human-loops", httpMethod: "GET", input: input)
    }

    ///  Starts a human loop, provided that at least one activation condition is met.
    public func startHumanLoop(_ input: StartHumanLoopRequest) -> EventLoopFuture<StartHumanLoopResponse> {
        return client.send(operation: "StartHumanLoop", path: "/human-loops", httpMethod: "POST", input: input)
    }

    ///  Stops the specified human loop.
    public func stopHumanLoop(_ input: StopHumanLoopRequest) -> EventLoopFuture<StopHumanLoopResponse> {
        return client.send(operation: "StopHumanLoop", path: "/human-loops/stop", httpMethod: "POST", input: input)
    }
}
