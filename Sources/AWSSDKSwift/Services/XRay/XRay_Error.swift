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

import AWSSDKSwiftCore

/// Error enum for XRay
public enum XRayErrorType: AWSErrorType {
    case invalidRequestException(message: String?)
    case ruleLimitExceededException(message: String?)
    case throttledException(message: String?)
}

extension XRayErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "RuleLimitExceededException":
            self = .ruleLimitExceededException(message: message)
        case "ThrottledException":
            self = .throttledException(message: message)
        default:
            return nil
        }
    }
}

extension XRayErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .invalidRequestException(let message):
            return "InvalidRequestException: \(message ?? "")"
        case .ruleLimitExceededException(let message):
            return "RuleLimitExceededException: \(message ?? "")"
        case .throttledException(let message):
            return "ThrottledException: \(message ?? "")"
        }
    }
}
