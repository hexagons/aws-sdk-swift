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
Client object for interacting with AWS PinpointSMSVoice service.

Pinpoint SMS and Voice Messaging public facing APIs
*/
public struct PinpointSMSVoice {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the PinpointSMSVoice client
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
            service: "sms-voice.pinpoint",
            signingName: "sms-voice",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-09-05",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [PinpointSMSVoiceErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Create a new configuration set. After you create the configuration set, you can add one or more event destinations to it.
    public func createConfigurationSet(_ input: CreateConfigurationSetRequest) -> EventLoopFuture<CreateConfigurationSetResponse> {
        return client.send(operation: "CreateConfigurationSet", path: "/v1/sms-voice/configuration-sets", httpMethod: "POST", input: input)
    }

    ///  Create a new event destination in a configuration set.
    public func createConfigurationSetEventDestination(_ input: CreateConfigurationSetEventDestinationRequest) -> EventLoopFuture<CreateConfigurationSetEventDestinationResponse> {
        return client.send(operation: "CreateConfigurationSetEventDestination", path: "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations", httpMethod: "POST", input: input)
    }

    ///  Deletes an existing configuration set.
    public func deleteConfigurationSet(_ input: DeleteConfigurationSetRequest) -> EventLoopFuture<DeleteConfigurationSetResponse> {
        return client.send(operation: "DeleteConfigurationSet", path: "/v1/sms-voice/configuration-sets/{ConfigurationSetName}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an event destination in a configuration set.
    public func deleteConfigurationSetEventDestination(_ input: DeleteConfigurationSetEventDestinationRequest) -> EventLoopFuture<DeleteConfigurationSetEventDestinationResponse> {
        return client.send(operation: "DeleteConfigurationSetEventDestination", path: "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", httpMethod: "DELETE", input: input)
    }

    ///  Obtain information about an event destination, including the types of events it reports, the Amazon Resource Name (ARN) of the destination, and the name of the event destination.
    public func getConfigurationSetEventDestinations(_ input: GetConfigurationSetEventDestinationsRequest) -> EventLoopFuture<GetConfigurationSetEventDestinationsResponse> {
        return client.send(operation: "GetConfigurationSetEventDestinations", path: "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations", httpMethod: "GET", input: input)
    }

    ///  List all of the configuration sets associated with your Amazon Pinpoint account in the current region.
    public func listConfigurationSets(_ input: ListConfigurationSetsRequest) -> EventLoopFuture<ListConfigurationSetsResponse> {
        return client.send(operation: "ListConfigurationSets", path: "/v1/sms-voice/configuration-sets", httpMethod: "GET", input: input)
    }

    ///  Create a new voice message and send it to a recipient's phone number.
    public func sendVoiceMessage(_ input: SendVoiceMessageRequest) -> EventLoopFuture<SendVoiceMessageResponse> {
        return client.send(operation: "SendVoiceMessage", path: "/v1/sms-voice/voice/message", httpMethod: "POST", input: input)
    }

    ///  Update an event destination in a configuration set. An event destination is a location that you publish information about your voice calls to. For example, you can log an event to an Amazon CloudWatch destination when a call fails.
    public func updateConfigurationSetEventDestination(_ input: UpdateConfigurationSetEventDestinationRequest) -> EventLoopFuture<UpdateConfigurationSetEventDestinationResponse> {
        return client.send(operation: "UpdateConfigurationSetEventDestination", path: "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", httpMethod: "PUT", input: input)
    }
}
