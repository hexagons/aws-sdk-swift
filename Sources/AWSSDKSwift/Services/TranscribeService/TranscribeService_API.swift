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
Client object for interacting with AWS TranscribeService service.

Operations and objects for transcribing speech to text.
*/
public struct TranscribeService {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the TranscribeService client
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
            amzTarget: "Transcribe",
            service: "transcribe",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-10-26",
            endpoint: endpoint,
            serviceEndpoints: ["fips-us-east-1": "fips.transcribe.us-east-1.amazonaws.com", "fips-us-east-2": "fips.transcribe.us-east-2.amazonaws.com", "fips-us-west-1": "fips.transcribe.us-west-1.amazonaws.com", "fips-us-west-2": "fips.transcribe.us-west-2.amazonaws.com"],
            middlewares: middlewares,
            possibleErrorTypes: [TranscribeServiceErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates a new custom vocabulary that you can use to change the way Amazon Transcribe handles transcription of an audio file. 
    public func createVocabulary(_ input: CreateVocabularyRequest) -> EventLoopFuture<CreateVocabularyResponse> {
        return client.send(operation: "CreateVocabulary", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new vocabulary filter that you can use to filter words, such as profane words, from the output of a transcription job.
    public func createVocabularyFilter(_ input: CreateVocabularyFilterRequest) -> EventLoopFuture<CreateVocabularyFilterResponse> {
        return client.send(operation: "CreateVocabularyFilter", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a previously submitted transcription job along with any other generated results such as the transcription, models, and so on.
    @discardableResult public func deleteTranscriptionJob(_ input: DeleteTranscriptionJobRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteTranscriptionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a vocabulary from Amazon Transcribe. 
    @discardableResult public func deleteVocabulary(_ input: DeleteVocabularyRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteVocabulary", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes a vocabulary filter.
    @discardableResult public func deleteVocabularyFilter(_ input: DeleteVocabularyFilterRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteVocabularyFilter", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a transcription job. To see the status of the job, check the TranscriptionJobStatus field. If the status is COMPLETED, the job is finished and you can find the results at the location specified in the TranscriptFileUri field. If you enable content redaction, the redacted transcript appears in RedactedTranscriptFileUri.
    public func getTranscriptionJob(_ input: GetTranscriptionJobRequest) -> EventLoopFuture<GetTranscriptionJobResponse> {
        return client.send(operation: "GetTranscriptionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a vocabulary. 
    public func getVocabulary(_ input: GetVocabularyRequest) -> EventLoopFuture<GetVocabularyResponse> {
        return client.send(operation: "GetVocabulary", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a vocabulary filter.
    public func getVocabularyFilter(_ input: GetVocabularyFilterRequest) -> EventLoopFuture<GetVocabularyFilterResponse> {
        return client.send(operation: "GetVocabularyFilter", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists transcription jobs with the specified status.
    public func listTranscriptionJobs(_ input: ListTranscriptionJobsRequest) -> EventLoopFuture<ListTranscriptionJobsResponse> {
        return client.send(operation: "ListTranscriptionJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of vocabularies that match the specified criteria. If no criteria are specified, returns the entire list of vocabularies.
    public func listVocabularies(_ input: ListVocabulariesRequest) -> EventLoopFuture<ListVocabulariesResponse> {
        return client.send(operation: "ListVocabularies", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about vocabulary filters.
    public func listVocabularyFilters(_ input: ListVocabularyFiltersRequest) -> EventLoopFuture<ListVocabularyFiltersResponse> {
        return client.send(operation: "ListVocabularyFilters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts an asynchronous job to transcribe speech to text. 
    public func startTranscriptionJob(_ input: StartTranscriptionJobRequest) -> EventLoopFuture<StartTranscriptionJobResponse> {
        return client.send(operation: "StartTranscriptionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates an existing vocabulary with new values. The UpdateVocabulary operation overwrites all of the existing information with the values that you provide in the request. 
    public func updateVocabulary(_ input: UpdateVocabularyRequest) -> EventLoopFuture<UpdateVocabularyResponse> {
        return client.send(operation: "UpdateVocabulary", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates a vocabulary filter with a new list of filtered words.
    public func updateVocabularyFilter(_ input: UpdateVocabularyFilterRequest) -> EventLoopFuture<UpdateVocabularyFilterResponse> {
        return client.send(operation: "UpdateVocabularyFilter", path: "/", httpMethod: "POST", input: input)
    }
}
