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

/// Error enum for LexRuntimeService
public enum LexRuntimeServiceErrorType: AWSErrorType {
    case badGatewayException(message: String?)
    case badRequestException(message: String?)
    case conflictException(message: String?)
    case dependencyFailedException(message: String?)
    case internalFailureException(message: String?)
    case limitExceededException(message: String?)
    case loopDetectedException(message: String?)
    case notAcceptableException(message: String?)
    case notFoundException(message: String?)
    case requestTimeoutException(message: String?)
    case unsupportedMediaTypeException(message: String?)
}

extension LexRuntimeServiceErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "BadGatewayException":
            self = .badGatewayException(message: message)
        case "BadRequestException":
            self = .badRequestException(message: message)
        case "ConflictException":
            self = .conflictException(message: message)
        case "DependencyFailedException":
            self = .dependencyFailedException(message: message)
        case "InternalFailureException":
            self = .internalFailureException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "LoopDetectedException":
            self = .loopDetectedException(message: message)
        case "NotAcceptableException":
            self = .notAcceptableException(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "RequestTimeoutException":
            self = .requestTimeoutException(message: message)
        case "UnsupportedMediaTypeException":
            self = .unsupportedMediaTypeException(message: message)
        default:
            return nil
        }
    }
}

extension LexRuntimeServiceErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .badGatewayException(let message):
            return "BadGatewayException: \(message ?? "")"
        case .badRequestException(let message):
            return "BadRequestException: \(message ?? "")"
        case .conflictException(let message):
            return "ConflictException: \(message ?? "")"
        case .dependencyFailedException(let message):
            return "DependencyFailedException: \(message ?? "")"
        case .internalFailureException(let message):
            return "InternalFailureException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .loopDetectedException(let message):
            return "LoopDetectedException: \(message ?? "")"
        case .notAcceptableException(let message):
            return "NotAcceptableException: \(message ?? "")"
        case .notFoundException(let message):
            return "NotFoundException: \(message ?? "")"
        case .requestTimeoutException(let message):
            return "RequestTimeoutException: \(message ?? "")"
        case .unsupportedMediaTypeException(let message):
            return "UnsupportedMediaTypeException: \(message ?? "")"
        }
    }
}
