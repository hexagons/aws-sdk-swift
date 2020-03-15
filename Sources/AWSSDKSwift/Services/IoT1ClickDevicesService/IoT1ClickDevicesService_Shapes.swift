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

extension IoT1ClickDevicesService {
    //MARK: Enums

    //MARK: Shapes

    public struct Attributes: AWSDecodableShape {


        public init() {
        }

    }

    public struct ClaimDevicesByClaimCodeRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "claimCode", location: .uri(locationName: "claimCode"))
        ]

        public let claimCode: String

        public init(claimCode: String) {
            self.claimCode = claimCode
        }

        private enum CodingKeys: String, CodingKey {
            case claimCode = "claimCode"
        }
    }

    public struct ClaimDevicesByClaimCodeResponse: AWSDecodableShape {

        /// The claim code provided by the device manufacturer.
        public let claimCode: String?
        /// The total number of devices associated with the claim code that has been processed in
        ///  the claim request.
        public let total: Int?

        public init(claimCode: String? = nil, total: Int? = nil) {
            self.claimCode = claimCode
            self.total = total
        }

        private enum CodingKeys: String, CodingKey {
            case claimCode = "claimCode"
            case total = "total"
        }
    }

    public struct DescribeDeviceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "deviceId", location: .uri(locationName: "deviceId"))
        ]

        public let deviceId: String

        public init(deviceId: String) {
            self.deviceId = deviceId
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
        }
    }

    public struct DescribeDeviceResponse: AWSDecodableShape {

        /// Device details.
        public let deviceDescription: DeviceDescription?

        public init(deviceDescription: DeviceDescription? = nil) {
            self.deviceDescription = deviceDescription
        }

        private enum CodingKeys: String, CodingKey {
            case deviceDescription = "deviceDescription"
        }
    }

    public struct Device: AWSDecodableShape {

        /// The user specified attributes associated with the device for an event.
        public let attributes: Attributes?
        /// The unique identifier of the device.
        public let deviceId: String?
        /// The device type, such as "button".
        public let `type`: String?

        public init(attributes: Attributes? = nil, deviceId: String? = nil, type: String? = nil) {
            self.attributes = attributes
            self.deviceId = deviceId
            self.`type` = `type`
        }

        private enum CodingKeys: String, CodingKey {
            case attributes = "attributes"
            case deviceId = "deviceId"
            case `type` = "type"
        }
    }

    public struct DeviceDescription: AWSDecodableShape {

        /// The ARN of the device.
        public let arn: String?
        /// An array of zero or more elements of DeviceAttribute objects providing
        ///  user specified device attributes.
        public let attributes: [String: String]?
        /// The unique identifier of the device.
        public let deviceId: String?
        /// A Boolean value indicating whether or not the device is enabled.
        public let enabled: Bool?
        /// A value between 0 and 1 inclusive, representing the fraction of life remaining for the
        ///  device.
        public let remainingLife: Double?
        public let tags: [String: String]?
        /// The type of the device, such as "button".
        public let `type`: String?

        public init(arn: String? = nil, attributes: [String: String]? = nil, deviceId: String? = nil, enabled: Bool? = nil, remainingLife: Double? = nil, tags: [String: String]? = nil, type: String? = nil) {
            self.arn = arn
            self.attributes = attributes
            self.deviceId = deviceId
            self.enabled = enabled
            self.remainingLife = remainingLife
            self.tags = tags
            self.`type` = `type`
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "arn"
            case attributes = "attributes"
            case deviceId = "deviceId"
            case enabled = "enabled"
            case remainingLife = "remainingLife"
            case tags = "tags"
            case `type` = "type"
        }
    }

    public struct DeviceEvent: AWSDecodableShape {

        /// An object representing the device associated with the event.
        public let device: Device?
        /// A serialized JSON object representing the device-type specific event.
        public let stdEvent: String?

        public init(device: Device? = nil, stdEvent: String? = nil) {
            self.device = device
            self.stdEvent = stdEvent
        }

        private enum CodingKeys: String, CodingKey {
            case device = "device"
            case stdEvent = "stdEvent"
        }
    }

    public struct DeviceMethod: AWSEncodableShape & AWSDecodableShape {

        /// The type of the device, such as "button".
        public let deviceType: String?
        /// The name of the method applicable to the deviceType.
        public let methodName: String?

        public init(deviceType: String? = nil, methodName: String? = nil) {
            self.deviceType = deviceType
            self.methodName = methodName
        }

        private enum CodingKeys: String, CodingKey {
            case deviceType = "deviceType"
            case methodName = "methodName"
        }
    }

    public struct FinalizeDeviceClaimRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "deviceId", location: .uri(locationName: "deviceId"))
        ]

        public let deviceId: String
        public let tags: [String: String]?

        public init(deviceId: String, tags: [String: String]? = nil) {
            self.deviceId = deviceId
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
            case tags = "tags"
        }
    }

    public struct FinalizeDeviceClaimResponse: AWSDecodableShape {

        public let state: String?

        public init(state: String? = nil) {
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case state = "state"
        }
    }

    public struct GetDeviceMethodsRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "deviceId", location: .uri(locationName: "deviceId"))
        ]

        public let deviceId: String

        public init(deviceId: String) {
            self.deviceId = deviceId
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
        }
    }

    public struct GetDeviceMethodsResponse: AWSDecodableShape {

        /// List of available device APIs.
        public let deviceMethods: [DeviceMethod]?

        public init(deviceMethods: [DeviceMethod]? = nil) {
            self.deviceMethods = deviceMethods
        }

        private enum CodingKeys: String, CodingKey {
            case deviceMethods = "deviceMethods"
        }
    }

    public struct InitiateDeviceClaimRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "deviceId", location: .uri(locationName: "deviceId"))
        ]

        public let deviceId: String

        public init(deviceId: String) {
            self.deviceId = deviceId
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
        }
    }

    public struct InitiateDeviceClaimResponse: AWSDecodableShape {

        public let state: String?

        public init(state: String? = nil) {
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case state = "state"
        }
    }

    public struct InvokeDeviceMethodRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "deviceId", location: .uri(locationName: "deviceId"))
        ]

        public let deviceId: String
        /// The device method to invoke.
        public let deviceMethod: DeviceMethod?
        /// A JSON encoded string containing the device method request parameters.
        public let deviceMethodParameters: String?

        public init(deviceId: String, deviceMethod: DeviceMethod? = nil, deviceMethodParameters: String? = nil) {
            self.deviceId = deviceId
            self.deviceMethod = deviceMethod
            self.deviceMethodParameters = deviceMethodParameters
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
            case deviceMethod = "deviceMethod"
            case deviceMethodParameters = "deviceMethodParameters"
        }
    }

    public struct InvokeDeviceMethodResponse: AWSDecodableShape {

        /// A JSON encoded string containing the device method response.
        public let deviceMethodResponse: String?

        public init(deviceMethodResponse: String? = nil) {
            self.deviceMethodResponse = deviceMethodResponse
        }

        private enum CodingKeys: String, CodingKey {
            case deviceMethodResponse = "deviceMethodResponse"
        }
    }

    public struct ListDeviceEventsRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "deviceId", location: .uri(locationName: "deviceId")), 
            AWSMemberEncoding(label: "fromTimeStamp", location: .querystring(locationName: "fromTimeStamp")), 
            AWSMemberEncoding(label: "maxResults", location: .querystring(locationName: "maxResults")), 
            AWSMemberEncoding(label: "nextToken", location: .querystring(locationName: "nextToken")), 
            AWSMemberEncoding(label: "toTimeStamp", location: .querystring(locationName: "toTimeStamp"))
        ]

        public let deviceId: String
        public let fromTimeStamp: TimeStamp
        public let maxResults: Int?
        public let nextToken: String?
        public let toTimeStamp: TimeStamp

        public init(deviceId: String, fromTimeStamp: TimeStamp, maxResults: Int? = nil, nextToken: String? = nil, toTimeStamp: TimeStamp) {
            self.deviceId = deviceId
            self.fromTimeStamp = fromTimeStamp
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.toTimeStamp = toTimeStamp
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name:"maxResults", parent: name, max: 250)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
            case fromTimeStamp = "fromTimeStamp"
            case maxResults = "maxResults"
            case nextToken = "nextToken"
            case toTimeStamp = "toTimeStamp"
        }
    }

    public struct ListDeviceEventsResponse: AWSDecodableShape {

        public let events: [DeviceEvent]?
        public let nextToken: String?

        public init(events: [DeviceEvent]? = nil, nextToken: String? = nil) {
            self.events = events
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case events = "events"
            case nextToken = "nextToken"
        }
    }

    public struct ListDevicesRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "deviceType", location: .querystring(locationName: "deviceType")), 
            AWSMemberEncoding(label: "maxResults", location: .querystring(locationName: "maxResults")), 
            AWSMemberEncoding(label: "nextToken", location: .querystring(locationName: "nextToken"))
        ]

        public let deviceType: String?
        public let maxResults: Int?
        public let nextToken: String?

        public init(deviceType: String? = nil, maxResults: Int? = nil, nextToken: String? = nil) {
            self.deviceType = deviceType
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name:"maxResults", parent: name, max: 250)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case deviceType = "deviceType"
            case maxResults = "maxResults"
            case nextToken = "nextToken"
        }
    }

    public struct ListDevicesResponse: AWSDecodableShape {

        /// A list of devices.
        public let devices: [DeviceDescription]?
        /// The token to retrieve the next set of results.
        public let nextToken: String?

        public init(devices: [DeviceDescription]? = nil, nextToken: String? = nil) {
            self.devices = devices
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case devices = "devices"
            case nextToken = "nextToken"
        }
    }

    public struct ListTagsForResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri(locationName: "resource-arn"))
        ]

        public let resourceArn: String

        public init(resourceArn: String) {
            self.resourceArn = resourceArn
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "resource-arn"
        }
    }

    public struct ListTagsForResourceResponse: AWSDecodableShape {

        public let tags: [String: String]?

        public init(tags: [String: String]? = nil) {
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "tags"
        }
    }

    public struct TagResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri(locationName: "resource-arn"))
        ]

        public let resourceArn: String
        public let tags: [String: String]

        public init(resourceArn: String, tags: [String: String]) {
            self.resourceArn = resourceArn
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "resource-arn"
            case tags = "tags"
        }
    }

    public struct UnclaimDeviceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "deviceId", location: .uri(locationName: "deviceId"))
        ]

        public let deviceId: String

        public init(deviceId: String) {
            self.deviceId = deviceId
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
        }
    }

    public struct UnclaimDeviceResponse: AWSDecodableShape {

        public let state: String?

        public init(state: String? = nil) {
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case state = "state"
        }
    }

    public struct UntagResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri(locationName: "resource-arn")), 
            AWSMemberEncoding(label: "tagKeys", location: .querystring(locationName: "tagKeys"))
        ]

        public let resourceArn: String
        public let tagKeys: [String]

        public init(resourceArn: String, tagKeys: [String]) {
            self.resourceArn = resourceArn
            self.tagKeys = tagKeys
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "resource-arn"
            case tagKeys = "tagKeys"
        }
    }

    public struct UpdateDeviceStateRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "deviceId", location: .uri(locationName: "deviceId"))
        ]

        public let deviceId: String
        /// If true, the device is enabled. If false, the device is
        ///  disabled.
        public let enabled: Bool?

        public init(deviceId: String, enabled: Bool? = nil) {
            self.deviceId = deviceId
            self.enabled = enabled
        }

        private enum CodingKeys: String, CodingKey {
            case deviceId = "deviceId"
            case enabled = "enabled"
        }
    }

    public struct UpdateDeviceStateResponse: AWSDecodableShape {


        public init() {
        }

    }
}
