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
Client object for interacting with AWS DeviceFarm service.

Welcome to the AWS Device Farm API documentation, which contains APIs for:   Testing on desktop browsers  Device Farm makes it possible for you to test your web applications on desktop browsers using Selenium. The APIs for desktop browser testing contain TestGrid in their names. For more information, see Testing Web Applications on Selenium with Device Farm.   Testing on real mobile devices Device Farm makes it possible for you to test apps on physical phones, tablets, and other devices in the cloud. For more information, see the Device Farm Developer Guide.  
*/
public struct DeviceFarm {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the DeviceFarm client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - eventLoopGroupProvider: EventLoopGroup to use. Use `useAWSClientShared` if the client shall manage its own EventLoopGroup.
    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "DeviceFarm_20150623",
            service: "devicefarm",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2015-06-23",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [DeviceFarmErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates a device pool.
    public func createDevicePool(_ input: CreateDevicePoolRequest) -> EventLoopFuture<CreateDevicePoolResult> {
        return client.send(operation: "CreateDevicePool", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a profile that can be applied to one or more private fleet device instances.
    public func createInstanceProfile(_ input: CreateInstanceProfileRequest) -> EventLoopFuture<CreateInstanceProfileResult> {
        return client.send(operation: "CreateInstanceProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a network profile.
    public func createNetworkProfile(_ input: CreateNetworkProfileRequest) -> EventLoopFuture<CreateNetworkProfileResult> {
        return client.send(operation: "CreateNetworkProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a project.
    public func createProject(_ input: CreateProjectRequest) -> EventLoopFuture<CreateProjectResult> {
        return client.send(operation: "CreateProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Specifies and starts a remote access session.
    public func createRemoteAccessSession(_ input: CreateRemoteAccessSessionRequest) -> EventLoopFuture<CreateRemoteAccessSessionResult> {
        return client.send(operation: "CreateRemoteAccessSession", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a Selenium testing project. Projects are used to track TestGridSession instances.
    public func createTestGridProject(_ input: CreateTestGridProjectRequest) -> EventLoopFuture<CreateTestGridProjectResult> {
        return client.send(operation: "CreateTestGridProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a signed, short-term URL that can be passed to a Selenium RemoteWebDriver constructor.
    public func createTestGridUrl(_ input: CreateTestGridUrlRequest) -> EventLoopFuture<CreateTestGridUrlResult> {
        return client.send(operation: "CreateTestGridUrl", path: "/", httpMethod: "POST", input: input)
    }

    ///  Uploads an app or test scripts.
    public func createUpload(_ input: CreateUploadRequest) -> EventLoopFuture<CreateUploadResult> {
        return client.send(operation: "CreateUpload", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a configuration record in Device Farm for your Amazon Virtual Private Cloud (VPC) endpoint.
    public func createVPCEConfiguration(_ input: CreateVPCEConfigurationRequest) -> EventLoopFuture<CreateVPCEConfigurationResult> {
        return client.send(operation: "CreateVPCEConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a device pool given the pool ARN. Does not allow deletion of curated pools owned by the system.
    public func deleteDevicePool(_ input: DeleteDevicePoolRequest) -> EventLoopFuture<DeleteDevicePoolResult> {
        return client.send(operation: "DeleteDevicePool", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a profile that can be applied to one or more private device instances.
    public func deleteInstanceProfile(_ input: DeleteInstanceProfileRequest) -> EventLoopFuture<DeleteInstanceProfileResult> {
        return client.send(operation: "DeleteInstanceProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a network profile.
    public func deleteNetworkProfile(_ input: DeleteNetworkProfileRequest) -> EventLoopFuture<DeleteNetworkProfileResult> {
        return client.send(operation: "DeleteNetworkProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an AWS Device Farm project, given the project ARN.  Deleting this resource does not stop an in-progress run.
    public func deleteProject(_ input: DeleteProjectRequest) -> EventLoopFuture<DeleteProjectResult> {
        return client.send(operation: "DeleteProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a completed remote access session and its results.
    public func deleteRemoteAccessSession(_ input: DeleteRemoteAccessSessionRequest) -> EventLoopFuture<DeleteRemoteAccessSessionResult> {
        return client.send(operation: "DeleteRemoteAccessSession", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the run, given the run ARN.  Deleting this resource does not stop an in-progress run.
    public func deleteRun(_ input: DeleteRunRequest) -> EventLoopFuture<DeleteRunResult> {
        return client.send(operation: "DeleteRun", path: "/", httpMethod: "POST", input: input)
    }

    ///   Deletes a Selenium testing project and all content generated under it.   You cannot undo this operation.   You cannot delete a project if it has active sessions. 
    public func deleteTestGridProject(_ input: DeleteTestGridProjectRequest) -> EventLoopFuture<DeleteTestGridProjectResult> {
        return client.send(operation: "DeleteTestGridProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an upload given the upload ARN.
    public func deleteUpload(_ input: DeleteUploadRequest) -> EventLoopFuture<DeleteUploadResult> {
        return client.send(operation: "DeleteUpload", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a configuration for your Amazon Virtual Private Cloud (VPC) endpoint.
    public func deleteVPCEConfiguration(_ input: DeleteVPCEConfigurationRequest) -> EventLoopFuture<DeleteVPCEConfigurationResult> {
        return client.send(operation: "DeleteVPCEConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the number of unmetered iOS or unmetered Android devices that have been purchased by the account.
    public func getAccountSettings(_ input: GetAccountSettingsRequest) -> EventLoopFuture<GetAccountSettingsResult> {
        return client.send(operation: "GetAccountSettings", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a unique device type.
    public func getDevice(_ input: GetDeviceRequest) -> EventLoopFuture<GetDeviceResult> {
        return client.send(operation: "GetDevice", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a device instance that belongs to a private device fleet.
    public func getDeviceInstance(_ input: GetDeviceInstanceRequest) -> EventLoopFuture<GetDeviceInstanceResult> {
        return client.send(operation: "GetDeviceInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a device pool.
    public func getDevicePool(_ input: GetDevicePoolRequest) -> EventLoopFuture<GetDevicePoolResult> {
        return client.send(operation: "GetDevicePool", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about compatibility with a device pool.
    public func getDevicePoolCompatibility(_ input: GetDevicePoolCompatibilityRequest) -> EventLoopFuture<GetDevicePoolCompatibilityResult> {
        return client.send(operation: "GetDevicePoolCompatibility", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about the specified instance profile.
    public func getInstanceProfile(_ input: GetInstanceProfileRequest) -> EventLoopFuture<GetInstanceProfileResult> {
        return client.send(operation: "GetInstanceProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a job.
    public func getJob(_ input: GetJobRequest) -> EventLoopFuture<GetJobResult> {
        return client.send(operation: "GetJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a network profile.
    public func getNetworkProfile(_ input: GetNetworkProfileRequest) -> EventLoopFuture<GetNetworkProfileResult> {
        return client.send(operation: "GetNetworkProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the current status and future status of all offerings purchased by an AWS account. The response indicates how many offerings are currently available and the offerings that will be available in the next period. The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact aws-devicefarm-support@amazon.com.
    public func getOfferingStatus(_ input: GetOfferingStatusRequest) -> EventLoopFuture<GetOfferingStatusResult> {
        return client.send(operation: "GetOfferingStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a project.
    public func getProject(_ input: GetProjectRequest) -> EventLoopFuture<GetProjectResult> {
        return client.send(operation: "GetProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a link to a currently running remote access session.
    public func getRemoteAccessSession(_ input: GetRemoteAccessSessionRequest) -> EventLoopFuture<GetRemoteAccessSessionResult> {
        return client.send(operation: "GetRemoteAccessSession", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a run.
    public func getRun(_ input: GetRunRequest) -> EventLoopFuture<GetRunResult> {
        return client.send(operation: "GetRun", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a suite.
    public func getSuite(_ input: GetSuiteRequest) -> EventLoopFuture<GetSuiteResult> {
        return client.send(operation: "GetSuite", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a test.
    public func getTest(_ input: GetTestRequest) -> EventLoopFuture<GetTestResult> {
        return client.send(operation: "GetTest", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves information about a Selenium testing project.
    public func getTestGridProject(_ input: GetTestGridProjectRequest) -> EventLoopFuture<GetTestGridProjectResult> {
        return client.send(operation: "GetTestGridProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  A session is an instance of a browser created through a RemoteWebDriver with the URL from CreateTestGridUrlResult$url. You can use the following to look up sessions:   The session ARN (GetTestGridSessionRequest$sessionArn).   The project ARN and a session ID (GetTestGridSessionRequest$projectArn and GetTestGridSessionRequest$sessionId).   
    public func getTestGridSession(_ input: GetTestGridSessionRequest) -> EventLoopFuture<GetTestGridSessionResult> {
        return client.send(operation: "GetTestGridSession", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about an upload.
    public func getUpload(_ input: GetUploadRequest) -> EventLoopFuture<GetUploadResult> {
        return client.send(operation: "GetUpload", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about the configuration settings for your Amazon Virtual Private Cloud (VPC) endpoint.
    public func getVPCEConfiguration(_ input: GetVPCEConfigurationRequest) -> EventLoopFuture<GetVPCEConfigurationResult> {
        return client.send(operation: "GetVPCEConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Installs an application to the device in a remote access session. For Android applications, the file must be in .apk format. For iOS applications, the file must be in .ipa format.
    public func installToRemoteAccessSession(_ input: InstallToRemoteAccessSessionRequest) -> EventLoopFuture<InstallToRemoteAccessSessionResult> {
        return client.send(operation: "InstallToRemoteAccessSession", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about artifacts.
    public func listArtifacts(_ input: ListArtifactsRequest) -> EventLoopFuture<ListArtifactsResult> {
        return client.send(operation: "ListArtifacts", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about the private device instances associated with one or more AWS accounts.
    public func listDeviceInstances(_ input: ListDeviceInstancesRequest) -> EventLoopFuture<ListDeviceInstancesResult> {
        return client.send(operation: "ListDeviceInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about device pools.
    public func listDevicePools(_ input: ListDevicePoolsRequest) -> EventLoopFuture<ListDevicePoolsResult> {
        return client.send(operation: "ListDevicePools", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about unique device types.
    public func listDevices(_ input: ListDevicesRequest) -> EventLoopFuture<ListDevicesResult> {
        return client.send(operation: "ListDevices", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about all the instance profiles in an AWS account.
    public func listInstanceProfiles(_ input: ListInstanceProfilesRequest) -> EventLoopFuture<ListInstanceProfilesResult> {
        return client.send(operation: "ListInstanceProfiles", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about jobs for a given test run.
    public func listJobs(_ input: ListJobsRequest) -> EventLoopFuture<ListJobsResult> {
        return client.send(operation: "ListJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the list of available network profiles.
    public func listNetworkProfiles(_ input: ListNetworkProfilesRequest) -> EventLoopFuture<ListNetworkProfilesResult> {
        return client.send(operation: "ListNetworkProfiles", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of offering promotions. Each offering promotion record contains the ID and description of the promotion. The API returns a NotEligible error if the caller is not permitted to invoke the operation. Contact aws-devicefarm-support@amazon.com if you must be able to invoke this operation.
    public func listOfferingPromotions(_ input: ListOfferingPromotionsRequest) -> EventLoopFuture<ListOfferingPromotionsResult> {
        return client.send(operation: "ListOfferingPromotions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of all historical purchases, renewals, and system renewal transactions for an AWS account. The list is paginated and ordered by a descending timestamp (most recent transactions are first). The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact aws-devicefarm-support@amazon.com.
    public func listOfferingTransactions(_ input: ListOfferingTransactionsRequest) -> EventLoopFuture<ListOfferingTransactionsResult> {
        return client.send(operation: "ListOfferingTransactions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of products or offerings that the user can manage through the API. Each offering record indicates the recurring price per unit and the frequency for that offering. The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact aws-devicefarm-support@amazon.com.
    public func listOfferings(_ input: ListOfferingsRequest) -> EventLoopFuture<ListOfferingsResult> {
        return client.send(operation: "ListOfferings", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about projects.
    public func listProjects(_ input: ListProjectsRequest) -> EventLoopFuture<ListProjectsResult> {
        return client.send(operation: "ListProjects", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of all currently running remote access sessions.
    public func listRemoteAccessSessions(_ input: ListRemoteAccessSessionsRequest) -> EventLoopFuture<ListRemoteAccessSessionsResult> {
        return client.send(operation: "ListRemoteAccessSessions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about runs, given an AWS Device Farm project ARN.
    public func listRuns(_ input: ListRunsRequest) -> EventLoopFuture<ListRunsResult> {
        return client.send(operation: "ListRuns", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about samples, given an AWS Device Farm job ARN.
    public func listSamples(_ input: ListSamplesRequest) -> EventLoopFuture<ListSamplesResult> {
        return client.send(operation: "ListSamples", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about test suites for a given job.
    public func listSuites(_ input: ListSuitesRequest) -> EventLoopFuture<ListSuitesResult> {
        return client.send(operation: "ListSuites", path: "/", httpMethod: "POST", input: input)
    }

    ///  List the tags for an AWS Device Farm resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of all Selenium testing projects in your account.
    public func listTestGridProjects(_ input: ListTestGridProjectsRequest) -> EventLoopFuture<ListTestGridProjectsResult> {
        return client.send(operation: "ListTestGridProjects", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of the actions taken in a TestGridSession.
    public func listTestGridSessionActions(_ input: ListTestGridSessionActionsRequest) -> EventLoopFuture<ListTestGridSessionActionsResult> {
        return client.send(operation: "ListTestGridSessionActions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of artifacts created during the session.
    public func listTestGridSessionArtifacts(_ input: ListTestGridSessionArtifactsRequest) -> EventLoopFuture<ListTestGridSessionArtifactsResult> {
        return client.send(operation: "ListTestGridSessionArtifacts", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of sessions for a TestGridProject.
    public func listTestGridSessions(_ input: ListTestGridSessionsRequest) -> EventLoopFuture<ListTestGridSessionsResult> {
        return client.send(operation: "ListTestGridSessions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about tests in a given test suite.
    public func listTests(_ input: ListTestsRequest) -> EventLoopFuture<ListTestsResult> {
        return client.send(operation: "ListTests", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about unique problems, such as exceptions or crashes. Unique problems are defined as a single instance of an error across a run, job, or suite. For example, if a call in your application consistently raises an exception (OutOfBoundsException in MyActivity.java:386), ListUniqueProblems returns a single entry instead of many individual entries for that exception.
    public func listUniqueProblems(_ input: ListUniqueProblemsRequest) -> EventLoopFuture<ListUniqueProblemsResult> {
        return client.send(operation: "ListUniqueProblems", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about uploads, given an AWS Device Farm project ARN.
    public func listUploads(_ input: ListUploadsRequest) -> EventLoopFuture<ListUploadsResult> {
        return client.send(operation: "ListUploads", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about all Amazon Virtual Private Cloud (VPC) endpoint configurations in the AWS account.
    public func listVPCEConfigurations(_ input: ListVPCEConfigurationsRequest) -> EventLoopFuture<ListVPCEConfigurationsResult> {
        return client.send(operation: "ListVPCEConfigurations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Immediately purchases offerings for an AWS account. Offerings renew with the latest total purchased quantity for an offering, unless the renewal was overridden. The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact aws-devicefarm-support@amazon.com.
    public func purchaseOffering(_ input: PurchaseOfferingRequest) -> EventLoopFuture<PurchaseOfferingResult> {
        return client.send(operation: "PurchaseOffering", path: "/", httpMethod: "POST", input: input)
    }

    ///  Explicitly sets the quantity of devices to renew for an offering, starting from the effectiveDate of the next period. The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact aws-devicefarm-support@amazon.com.
    public func renewOffering(_ input: RenewOfferingRequest) -> EventLoopFuture<RenewOfferingResult> {
        return client.send(operation: "RenewOffering", path: "/", httpMethod: "POST", input: input)
    }

    ///  Schedules a run.
    public func scheduleRun(_ input: ScheduleRunRequest) -> EventLoopFuture<ScheduleRunResult> {
        return client.send(operation: "ScheduleRun", path: "/", httpMethod: "POST", input: input)
    }

    ///  Initiates a stop request for the current job. AWS Device Farm immediately stops the job on the device where tests have not started. You are not billed for this device. On the device where tests have started, setup suite and teardown suite tests run to completion on the device. You are billed for setup, teardown, and any tests that were in progress or already completed.
    public func stopJob(_ input: StopJobRequest) -> EventLoopFuture<StopJobResult> {
        return client.send(operation: "StopJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Ends a specified remote access session.
    public func stopRemoteAccessSession(_ input: StopRemoteAccessSessionRequest) -> EventLoopFuture<StopRemoteAccessSessionResult> {
        return client.send(operation: "StopRemoteAccessSession", path: "/", httpMethod: "POST", input: input)
    }

    ///  Initiates a stop request for the current test run. AWS Device Farm immediately stops the run on devices where tests have not started. You are not billed for these devices. On devices where tests have started executing, setup suite and teardown suite tests run to completion on those devices. You are billed for setup, teardown, and any tests that were in progress or already completed.
    public func stopRun(_ input: StopRunRequest) -> EventLoopFuture<StopRunResult> {
        return client.send(operation: "StopRun", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are also deleted.
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified tags from a resource.
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates information about a private device instance.
    public func updateDeviceInstance(_ input: UpdateDeviceInstanceRequest) -> EventLoopFuture<UpdateDeviceInstanceResult> {
        return client.send(operation: "UpdateDeviceInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the name, description, and rules in a device pool given the attributes and the pool ARN. Rule updates are all-or-nothing, meaning they can only be updated as a whole (or not at all).
    public func updateDevicePool(_ input: UpdateDevicePoolRequest) -> EventLoopFuture<UpdateDevicePoolResult> {
        return client.send(operation: "UpdateDevicePool", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates information about an existing private device instance profile.
    public func updateInstanceProfile(_ input: UpdateInstanceProfileRequest) -> EventLoopFuture<UpdateInstanceProfileResult> {
        return client.send(operation: "UpdateInstanceProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the network profile.
    public func updateNetworkProfile(_ input: UpdateNetworkProfileRequest) -> EventLoopFuture<UpdateNetworkProfileResult> {
        return client.send(operation: "UpdateNetworkProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the specified project name, given the project ARN and a new name.
    public func updateProject(_ input: UpdateProjectRequest) -> EventLoopFuture<UpdateProjectResult> {
        return client.send(operation: "UpdateProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Change details of a project.
    public func updateTestGridProject(_ input: UpdateTestGridProjectRequest) -> EventLoopFuture<UpdateTestGridProjectResult> {
        return client.send(operation: "UpdateTestGridProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates an uploaded test spec.
    public func updateUpload(_ input: UpdateUploadRequest) -> EventLoopFuture<UpdateUploadResult> {
        return client.send(operation: "UpdateUpload", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates information about an Amazon Virtual Private Cloud (VPC) endpoint configuration.
    public func updateVPCEConfiguration(_ input: UpdateVPCEConfigurationRequest) -> EventLoopFuture<UpdateVPCEConfigurationResult> {
        return client.send(operation: "UpdateVPCEConfiguration", path: "/", httpMethod: "POST", input: input)
    }
}
