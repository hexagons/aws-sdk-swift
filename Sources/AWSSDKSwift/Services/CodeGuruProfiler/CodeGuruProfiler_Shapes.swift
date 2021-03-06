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

import Foundation
import AWSSDKSwiftCore

extension CodeGuruProfiler {
    //MARK: Enums

    public enum AggregationPeriod: String, CustomStringConvertible, Codable {
        case p1d = "P1D"
        case pt1h = "PT1H"
        case pt5m = "PT5M"
        public var description: String { return self.rawValue }
    }

    public enum OrderBy: String, CustomStringConvertible, Codable {
        case timestampascending = "TimestampAscending"
        case timestampdescending = "TimestampDescending"
        public var description: String { return self.rawValue }
    }

    //MARK: Shapes

    public struct AgentConfiguration: AWSShape {

        public let periodInSeconds: Int
        public let shouldProfile: Bool

        public init(periodInSeconds: Int, shouldProfile: Bool) {
            self.periodInSeconds = periodInSeconds
            self.shouldProfile = shouldProfile
        }

        private enum CodingKeys: String, CodingKey {
            case periodInSeconds = "periodInSeconds"
            case shouldProfile = "shouldProfile"
        }
    }

    public struct AgentOrchestrationConfig: AWSShape {

        public let profilingEnabled: Bool

        public init(profilingEnabled: Bool) {
            self.profilingEnabled = profilingEnabled
        }

        private enum CodingKeys: String, CodingKey {
            case profilingEnabled = "profilingEnabled"
        }
    }

    public struct AggregatedProfileTime: AWSShape {

        /// The time period.
        public let period: AggregationPeriod?
        /// The start time.
        public let start: TimeStamp?

        public init(period: AggregationPeriod? = nil, start: TimeStamp? = nil) {
            self.period = period
            self.start = start
        }

        private enum CodingKeys: String, CodingKey {
            case period = "period"
            case start = "start"
        }
    }

    public struct ConfigureAgentRequest: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "profilingGroupName", location: .uri(locationName: "profilingGroupName"))
        ]

        public let fleetInstanceId: String?
        public let profilingGroupName: String

        public init(fleetInstanceId: String? = nil, profilingGroupName: String) {
            self.fleetInstanceId = fleetInstanceId
            self.profilingGroupName = profilingGroupName
        }

        public func validate(name: String) throws {
            try validate(self.fleetInstanceId, name:"fleetInstanceId", parent: name, max: 255)
            try validate(self.fleetInstanceId, name:"fleetInstanceId", parent: name, min: 1)
            try validate(self.fleetInstanceId, name:"fleetInstanceId", parent: name, pattern: "^[\\w-.:/]+$")
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, max: 255)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, min: 1)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, pattern: "^[\\w-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case fleetInstanceId = "fleetInstanceId"
            case profilingGroupName = "profilingGroupName"
        }
    }

    public struct ConfigureAgentResponse: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "configuration"

        public let configuration: AgentConfiguration

        public init(configuration: AgentConfiguration) {
            self.configuration = configuration
        }

        private enum CodingKeys: String, CodingKey {
            case configuration = "configuration"
        }
    }

    public struct CreateProfilingGroupRequest: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "clientToken", location: .querystring(locationName: "clientToken"))
        ]

        /// The agent orchestration configuration.
        public let agentOrchestrationConfig: AgentOrchestrationConfig?
        /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This parameter specifies a unique identifier for the new profiling group that helps ensure idempotency.
        public let clientToken: String
        /// The name of the profiling group.
        public let profilingGroupName: String

        public init(agentOrchestrationConfig: AgentOrchestrationConfig? = nil, clientToken: String = CreateProfilingGroupRequest.idempotencyToken(), profilingGroupName: String) {
            self.agentOrchestrationConfig = agentOrchestrationConfig
            self.clientToken = clientToken
            self.profilingGroupName = profilingGroupName
        }

        public func validate(name: String) throws {
            try validate(self.clientToken, name:"clientToken", parent: name, max: 64)
            try validate(self.clientToken, name:"clientToken", parent: name, min: 1)
            try validate(self.clientToken, name:"clientToken", parent: name, pattern: "^[\\w-]+$")
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, max: 255)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, min: 1)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, pattern: "^[\\w-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case agentOrchestrationConfig = "agentOrchestrationConfig"
            case clientToken = "clientToken"
            case profilingGroupName = "profilingGroupName"
        }
    }

    public struct CreateProfilingGroupResponse: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "profilingGroup"

        /// Information about the new profiling group
        public let profilingGroup: ProfilingGroupDescription

        public init(profilingGroup: ProfilingGroupDescription) {
            self.profilingGroup = profilingGroup
        }

        private enum CodingKeys: String, CodingKey {
            case profilingGroup = "profilingGroup"
        }
    }

    public struct DeleteProfilingGroupRequest: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "profilingGroupName", location: .uri(locationName: "profilingGroupName"))
        ]

        /// The profiling group name to delete.
        public let profilingGroupName: String

        public init(profilingGroupName: String) {
            self.profilingGroupName = profilingGroupName
        }

        public func validate(name: String) throws {
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, max: 255)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, min: 1)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, pattern: "^[\\w-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case profilingGroupName = "profilingGroupName"
        }
    }

    public struct DeleteProfilingGroupResponse: AWSShape {


        public init() {
        }

    }

    public struct DescribeProfilingGroupRequest: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "profilingGroupName", location: .uri(locationName: "profilingGroupName"))
        ]

        /// The profiling group name.
        public let profilingGroupName: String

        public init(profilingGroupName: String) {
            self.profilingGroupName = profilingGroupName
        }

        public func validate(name: String) throws {
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, max: 255)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, min: 1)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, pattern: "^[\\w-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case profilingGroupName = "profilingGroupName"
        }
    }

    public struct DescribeProfilingGroupResponse: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "profilingGroup"

        /// Information about a profiling group.
        public let profilingGroup: ProfilingGroupDescription

        public init(profilingGroup: ProfilingGroupDescription) {
            self.profilingGroup = profilingGroup
        }

        private enum CodingKeys: String, CodingKey {
            case profilingGroup = "profilingGroup"
        }
    }

    public struct GetProfileRequest: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "accept", location: .header(locationName: "Accept")), 
            AWSMemberEncoding(label: "endTime", location: .querystring(locationName: "endTime")), 
            AWSMemberEncoding(label: "maxDepth", location: .querystring(locationName: "maxDepth")), 
            AWSMemberEncoding(label: "period", location: .querystring(locationName: "period")), 
            AWSMemberEncoding(label: "profilingGroupName", location: .uri(locationName: "profilingGroupName")), 
            AWSMemberEncoding(label: "startTime", location: .querystring(locationName: "startTime"))
        ]

        /// The format of the profile to return. You can choose application/json or the default application/x-amzn-ion. 
        public let accept: String?
        ///  You must specify exactly two of the following parameters: startTime, period, and endTime. 
        public let endTime: TimeStamp?
        /// The maximum depth of the graph.
        public let maxDepth: Int?
        /// The period of the profile to get. The time range must be in the past and not longer than one week.  You must specify exactly two of the following parameters: startTime, period, and endTime. 
        public let period: String?
        /// The name of the profiling group to get.
        public let profilingGroupName: String
        /// The start time of the profile to get. You must specify exactly two of the following parameters: startTime, period, and endTime. 
        public let startTime: TimeStamp?

        public init(accept: String? = nil, endTime: TimeStamp? = nil, maxDepth: Int? = nil, period: String? = nil, profilingGroupName: String, startTime: TimeStamp? = nil) {
            self.accept = accept
            self.endTime = endTime
            self.maxDepth = maxDepth
            self.period = period
            self.profilingGroupName = profilingGroupName
            self.startTime = startTime
        }

        public func validate(name: String) throws {
            try validate(self.maxDepth, name:"maxDepth", parent: name, max: 10000)
            try validate(self.maxDepth, name:"maxDepth", parent: name, min: 1)
            try validate(self.period, name:"period", parent: name, max: 64)
            try validate(self.period, name:"period", parent: name, min: 1)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, max: 255)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, min: 1)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, pattern: "^[\\w-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case accept = "Accept"
            case endTime = "endTime"
            case maxDepth = "maxDepth"
            case period = "period"
            case profilingGroupName = "profilingGroupName"
            case startTime = "startTime"
        }
    }

    public struct GetProfileResponse: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "profile"
        public static var _encoding = [
            AWSMemberEncoding(label: "contentEncoding", location: .header(locationName: "Content-Encoding")), 
            AWSMemberEncoding(label: "contentType", location: .header(locationName: "Content-Type")), 
            AWSMemberEncoding(label: "profile", encoding: .blob)
        ]

        /// The content encoding of the profile.
        public let contentEncoding: String?
        /// The content type of the profile in the payload. It is either application/json or the default application/x-amzn-ion.
        public let contentType: String
        /// Information about the profile.
        public let profile: Data

        public init(contentEncoding: String? = nil, contentType: String, profile: Data) {
            self.contentEncoding = contentEncoding
            self.contentType = contentType
            self.profile = profile
        }

        private enum CodingKeys: String, CodingKey {
            case contentEncoding = "Content-Encoding"
            case contentType = "Content-Type"
            case profile = "profile"
        }
    }

    public struct ListProfileTimesRequest: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "endTime", location: .querystring(locationName: "endTime")), 
            AWSMemberEncoding(label: "maxResults", location: .querystring(locationName: "maxResults")), 
            AWSMemberEncoding(label: "nextToken", location: .querystring(locationName: "nextToken")), 
            AWSMemberEncoding(label: "orderBy", location: .querystring(locationName: "orderBy")), 
            AWSMemberEncoding(label: "period", location: .querystring(locationName: "period")), 
            AWSMemberEncoding(label: "profilingGroupName", location: .uri(locationName: "profilingGroupName")), 
            AWSMemberEncoding(label: "startTime", location: .querystring(locationName: "startTime"))
        ]

        /// The end time of the time range from which to list the profiles.
        public let endTime: TimeStamp
        /// The maximum number of profile time results returned by ListProfileTimes in paginated output. When this parameter is used, ListProfileTimes only returns maxResults results in a single page with a nextToken response element. The remaining results of the initial request can be seen by sending another ListProfileTimes request with the returned nextToken value. 
        public let maxResults: Int?
        /// The nextToken value returned from a previous paginated ListProfileTimes request where maxResults was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the nextToken value.   This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes. 
        public let nextToken: String?
        /// The order (ascending or descending by start time of the profile) to use when listing profiles. Defaults to TIMESTAMP_DESCENDING. 
        public let orderBy: OrderBy?
        /// The aggregation period.
        public let period: AggregationPeriod
        /// The name of the profiling group.
        public let profilingGroupName: String
        /// The start time of the time range from which to list the profiles.
        public let startTime: TimeStamp

        public init(endTime: TimeStamp, maxResults: Int? = nil, nextToken: String? = nil, orderBy: OrderBy? = nil, period: AggregationPeriod, profilingGroupName: String, startTime: TimeStamp) {
            self.endTime = endTime
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.orderBy = orderBy
            self.period = period
            self.profilingGroupName = profilingGroupName
            self.startTime = startTime
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name:"maxResults", parent: name, max: 1000)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, max: 64)
            try validate(self.nextToken, name:"nextToken", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, pattern: "^[\\w-]+$")
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, max: 255)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, min: 1)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, pattern: "^[\\w-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case endTime = "endTime"
            case maxResults = "maxResults"
            case nextToken = "nextToken"
            case orderBy = "orderBy"
            case period = "period"
            case profilingGroupName = "profilingGroupName"
            case startTime = "startTime"
        }
    }

    public struct ListProfileTimesResponse: AWSShape {

        /// The nextToken value to include in a future ListProfileTimes request. When the results of a ListProfileTimes request exceed maxResults, this value can be used to retrieve the next page of results. This value is null when there are no more results to return. 
        public let nextToken: String?
        /// The list of start times of the available profiles for the aggregation period in the specified time range. 
        public let profileTimes: [ProfileTime]

        public init(nextToken: String? = nil, profileTimes: [ProfileTime]) {
            self.nextToken = nextToken
            self.profileTimes = profileTimes
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case profileTimes = "profileTimes"
        }
    }

    public struct ListProfilingGroupsRequest: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "includeDescription", location: .querystring(locationName: "includeDescription")), 
            AWSMemberEncoding(label: "maxResults", location: .querystring(locationName: "maxResults")), 
            AWSMemberEncoding(label: "nextToken", location: .querystring(locationName: "nextToken"))
        ]

        /// A Boolean value indicating whether to include a description.
        public let includeDescription: Bool?
        /// The maximum number of profiling groups results returned by ListProfilingGroups in paginated output. When this parameter is used, ListProfilingGroups only returns maxResults results in a single page along with a nextToken response element. The remaining results of the initial request can be seen by sending another ListProfilingGroups request with the returned nextToken value. 
        public let maxResults: Int?
        /// The nextToken value returned from a previous paginated ListProfilingGroups request where maxResults was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the nextToken value.   This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes. 
        public let nextToken: String?

        public init(includeDescription: Bool? = nil, maxResults: Int? = nil, nextToken: String? = nil) {
            self.includeDescription = includeDescription
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name:"maxResults", parent: name, max: 1000)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, max: 64)
            try validate(self.nextToken, name:"nextToken", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, pattern: "^[\\w-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case includeDescription = "includeDescription"
            case maxResults = "maxResults"
            case nextToken = "nextToken"
        }
    }

    public struct ListProfilingGroupsResponse: AWSShape {

        /// The nextToken value to include in a future ListProfilingGroups request. When the results of a ListProfilingGroups request exceed maxResults, this value can be used to retrieve the next page of results. This value is null when there are no more results to return. 
        public let nextToken: String?
        /// Information about profiling group names.
        public let profilingGroupNames: [String]
        /// Information about profiling groups.
        public let profilingGroups: [ProfilingGroupDescription]?

        public init(nextToken: String? = nil, profilingGroupNames: [String], profilingGroups: [ProfilingGroupDescription]? = nil) {
            self.nextToken = nextToken
            self.profilingGroupNames = profilingGroupNames
            self.profilingGroups = profilingGroups
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case profilingGroupNames = "profilingGroupNames"
            case profilingGroups = "profilingGroups"
        }
    }

    public struct PostAgentProfileRequest: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "agentProfile"
        public static var _encoding = [
            AWSMemberEncoding(label: "agentProfile", encoding: .blob), 
            AWSMemberEncoding(label: "contentType", location: .header(locationName: "Content-Type")), 
            AWSMemberEncoding(label: "profileToken", location: .querystring(locationName: "profileToken")), 
            AWSMemberEncoding(label: "profilingGroupName", location: .uri(locationName: "profilingGroupName"))
        ]

        public let agentProfile: Data
        public let contentType: String
        public let profileToken: String?
        public let profilingGroupName: String

        public init(agentProfile: Data, contentType: String, profileToken: String? = PostAgentProfileRequest.idempotencyToken(), profilingGroupName: String) {
            self.agentProfile = agentProfile
            self.contentType = contentType
            self.profileToken = profileToken
            self.profilingGroupName = profilingGroupName
        }

        public func validate(name: String) throws {
            try validate(self.profileToken, name:"profileToken", parent: name, max: 64)
            try validate(self.profileToken, name:"profileToken", parent: name, min: 1)
            try validate(self.profileToken, name:"profileToken", parent: name, pattern: "^[\\w-]+$")
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, max: 255)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, min: 1)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, pattern: "^[\\w-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case agentProfile = "agentProfile"
            case contentType = "Content-Type"
            case profileToken = "profileToken"
            case profilingGroupName = "profilingGroupName"
        }
    }

    public struct PostAgentProfileResponse: AWSShape {


        public init() {
        }

    }

    public struct ProfileTime: AWSShape {

        /// The start time of the profile.
        public let start: TimeStamp?

        public init(start: TimeStamp? = nil) {
            self.start = start
        }

        private enum CodingKeys: String, CodingKey {
            case start = "start"
        }
    }

    public struct ProfilingGroupDescription: AWSShape {

        public let agentOrchestrationConfig: AgentOrchestrationConfig?
        /// The Amazon Resource Name (ARN) identifying the profiling group.
        public let arn: String?
        /// The time, in milliseconds since the epoch, when the profiling group was created.
        public let createdAt: TimeStamp?
        /// The name of the profiling group.
        public let name: String?
        /// The status of the profiling group.
        public let profilingStatus: ProfilingStatus?
        /// The time, in milliseconds since the epoch, when the profiling group was last updated.
        public let updatedAt: TimeStamp?

        public init(agentOrchestrationConfig: AgentOrchestrationConfig? = nil, arn: String? = nil, createdAt: TimeStamp? = nil, name: String? = nil, profilingStatus: ProfilingStatus? = nil, updatedAt: TimeStamp? = nil) {
            self.agentOrchestrationConfig = agentOrchestrationConfig
            self.arn = arn
            self.createdAt = createdAt
            self.name = name
            self.profilingStatus = profilingStatus
            self.updatedAt = updatedAt
        }

        private enum CodingKeys: String, CodingKey {
            case agentOrchestrationConfig = "agentOrchestrationConfig"
            case arn = "arn"
            case createdAt = "createdAt"
            case name = "name"
            case profilingStatus = "profilingStatus"
            case updatedAt = "updatedAt"
        }
    }

    public struct ProfilingStatus: AWSShape {

        /// The time, in milliseconds since the epoch, when the latest agent was orchestrated.
        public let latestAgentOrchestratedAt: TimeStamp?
        /// The time, in milliseconds since the epoch, when the latest agent was reported..
        public let latestAgentProfileReportedAt: TimeStamp?
        /// The latest aggregated profile
        public let latestAggregatedProfile: AggregatedProfileTime?

        public init(latestAgentOrchestratedAt: TimeStamp? = nil, latestAgentProfileReportedAt: TimeStamp? = nil, latestAggregatedProfile: AggregatedProfileTime? = nil) {
            self.latestAgentOrchestratedAt = latestAgentOrchestratedAt
            self.latestAgentProfileReportedAt = latestAgentProfileReportedAt
            self.latestAggregatedProfile = latestAggregatedProfile
        }

        private enum CodingKeys: String, CodingKey {
            case latestAgentOrchestratedAt = "latestAgentOrchestratedAt"
            case latestAgentProfileReportedAt = "latestAgentProfileReportedAt"
            case latestAggregatedProfile = "latestAggregatedProfile"
        }
    }

    public struct UpdateProfilingGroupRequest: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "profilingGroupName", location: .uri(locationName: "profilingGroupName"))
        ]

        public let agentOrchestrationConfig: AgentOrchestrationConfig
        /// The name of the profiling group to update.
        public let profilingGroupName: String

        public init(agentOrchestrationConfig: AgentOrchestrationConfig, profilingGroupName: String) {
            self.agentOrchestrationConfig = agentOrchestrationConfig
            self.profilingGroupName = profilingGroupName
        }

        public func validate(name: String) throws {
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, max: 255)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, min: 1)
            try validate(self.profilingGroupName, name:"profilingGroupName", parent: name, pattern: "^[\\w-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case agentOrchestrationConfig = "agentOrchestrationConfig"
            case profilingGroupName = "profilingGroupName"
        }
    }

    public struct UpdateProfilingGroupResponse: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "profilingGroup"

        /// Updated information about the profiling group.
        public let profilingGroup: ProfilingGroupDescription

        public init(profilingGroup: ProfilingGroupDescription) {
            self.profilingGroup = profilingGroup
        }

        private enum CodingKeys: String, CodingKey {
            case profilingGroup = "profilingGroup"
        }
    }
}
