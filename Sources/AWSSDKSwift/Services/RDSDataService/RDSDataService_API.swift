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
Client object for interacting with AWS RDSDataService service.

Amazon RDS Data Service Amazon RDS provides an HTTP endpoint to run SQL statements on an Amazon Aurora Serverless DB cluster. To run these statements, you work with the Data Service API. For more information about the Data Service API, see Using the Data API for Aurora Serverless in the Amazon Aurora User Guide.  If you have questions or comments related to the Data API, send email to Rds-data-api-feedback@amazon.com. 
*/
public struct RDSDataService {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the RDSDataService client
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
            service: "rds-data",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-08-01",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [RDSDataServiceErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Runs a batch SQL statement over an array of data. You can run bulk update and insert operations for multiple records using a DML statement with different parameter sets. Bulk operations can provide a significant performance improvement over individual insert and update operations.  If a call isn't part of a transaction because it doesn't include the transactionID parameter, changes that result from the call are committed automatically. 
    public func batchExecuteStatement(_ input: BatchExecuteStatementRequest) -> EventLoopFuture<BatchExecuteStatementResponse> {
        return client.send(operation: "BatchExecuteStatement", path: "/BatchExecute", httpMethod: "POST", input: input)
    }

    ///  Starts a SQL transaction.  &lt;important&gt; &lt;p&gt;A transaction can run for a maximum of 24 hours. A transaction is terminated and rolled back automatically after 24 hours.&lt;/p&gt; &lt;p&gt;A transaction times out if no calls use its transaction ID in three minutes. If a transaction times out before it's committed, it's rolled back automatically.&lt;/p&gt; &lt;p&gt;DDL statements inside a transaction cause an implicit commit. We recommend that you run each DDL statement in a separate &lt;code&gt;ExecuteStatement&lt;/code&gt; call with &lt;code&gt;continueAfterTimeout&lt;/code&gt; enabled.&lt;/p&gt; &lt;/important&gt; 
    public func beginTransaction(_ input: BeginTransactionRequest) -> EventLoopFuture<BeginTransactionResponse> {
        return client.send(operation: "BeginTransaction", path: "/BeginTransaction", httpMethod: "POST", input: input)
    }

    ///  Ends a SQL transaction started with the BeginTransaction operation and commits the changes.
    public func commitTransaction(_ input: CommitTransactionRequest) -> EventLoopFuture<CommitTransactionResponse> {
        return client.send(operation: "CommitTransaction", path: "/CommitTransaction", httpMethod: "POST", input: input)
    }

    ///  Runs one or more SQL statements.  This operation is deprecated. Use the BatchExecuteStatement or ExecuteStatement operation. 
    @available(*, deprecated, message:"The ExecuteSql API is deprecated, please use the ExecuteStatement API.")
    public func executeSql(_ input: ExecuteSqlRequest) -> EventLoopFuture<ExecuteSqlResponse> {
        return client.send(operation: "ExecuteSql", path: "/ExecuteSql", httpMethod: "POST", input: input)
    }

    ///  Runs a SQL statement against a database.  If a call isn't part of a transaction because it doesn't include the transactionID parameter, changes that result from the call are committed automatically.  The response size limit is 1 MB. If the call returns more than 1 MB of response data, the call is terminated.
    public func executeStatement(_ input: ExecuteStatementRequest) -> EventLoopFuture<ExecuteStatementResponse> {
        return client.send(operation: "ExecuteStatement", path: "/Execute", httpMethod: "POST", input: input)
    }

    ///  Performs a rollback of a transaction. Rolling back a transaction cancels its changes.
    public func rollbackTransaction(_ input: RollbackTransactionRequest) -> EventLoopFuture<RollbackTransactionResponse> {
        return client.send(operation: "RollbackTransaction", path: "/RollbackTransaction", httpMethod: "POST", input: input)
    }
}
