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

/// Error enum for FSx
public enum FSxErrorType: AWSErrorType {
    case activeDirectoryError(message: String?)
    case backupInProgress(message: String?)
    case backupNotFound(message: String?)
    case backupRestoring(message: String?)
    case badRequest(message: String?)
    case dataRepositoryTaskEnded(message: String?)
    case dataRepositoryTaskExecuting(message: String?)
    case dataRepositoryTaskNotFound(message: String?)
    case fileSystemNotFound(message: String?)
    case incompatibleParameterError(message: String?)
    case internalServerError(message: String?)
    case invalidExportPath(message: String?)
    case invalidImportPath(message: String?)
    case invalidNetworkSettings(message: String?)
    case invalidPerUnitStorageThroughput(message: String?)
    case missingFileSystemConfiguration(message: String?)
    case notServiceResourceError(message: String?)
    case resourceDoesNotSupportTagging(message: String?)
    case resourceNotFound(message: String?)
    case serviceLimitExceeded(message: String?)
    case unsupportedOperation(message: String?)
}

extension FSxErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ActiveDirectoryError":
            self = .activeDirectoryError(message: message)
        case "BackupInProgress":
            self = .backupInProgress(message: message)
        case "BackupNotFound":
            self = .backupNotFound(message: message)
        case "BackupRestoring":
            self = .backupRestoring(message: message)
        case "BadRequest":
            self = .badRequest(message: message)
        case "DataRepositoryTaskEnded":
            self = .dataRepositoryTaskEnded(message: message)
        case "DataRepositoryTaskExecuting":
            self = .dataRepositoryTaskExecuting(message: message)
        case "DataRepositoryTaskNotFound":
            self = .dataRepositoryTaskNotFound(message: message)
        case "FileSystemNotFound":
            self = .fileSystemNotFound(message: message)
        case "IncompatibleParameterError":
            self = .incompatibleParameterError(message: message)
        case "InternalServerError":
            self = .internalServerError(message: message)
        case "InvalidExportPath":
            self = .invalidExportPath(message: message)
        case "InvalidImportPath":
            self = .invalidImportPath(message: message)
        case "InvalidNetworkSettings":
            self = .invalidNetworkSettings(message: message)
        case "InvalidPerUnitStorageThroughput":
            self = .invalidPerUnitStorageThroughput(message: message)
        case "MissingFileSystemConfiguration":
            self = .missingFileSystemConfiguration(message: message)
        case "NotServiceResourceError":
            self = .notServiceResourceError(message: message)
        case "ResourceDoesNotSupportTagging":
            self = .resourceDoesNotSupportTagging(message: message)
        case "ResourceNotFound":
            self = .resourceNotFound(message: message)
        case "ServiceLimitExceeded":
            self = .serviceLimitExceeded(message: message)
        case "UnsupportedOperation":
            self = .unsupportedOperation(message: message)
        default:
            return nil
        }
    }
}

extension FSxErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .activeDirectoryError(let message):
            return "ActiveDirectoryError: \(message ?? "")"
        case .backupInProgress(let message):
            return "BackupInProgress: \(message ?? "")"
        case .backupNotFound(let message):
            return "BackupNotFound: \(message ?? "")"
        case .backupRestoring(let message):
            return "BackupRestoring: \(message ?? "")"
        case .badRequest(let message):
            return "BadRequest: \(message ?? "")"
        case .dataRepositoryTaskEnded(let message):
            return "DataRepositoryTaskEnded: \(message ?? "")"
        case .dataRepositoryTaskExecuting(let message):
            return "DataRepositoryTaskExecuting: \(message ?? "")"
        case .dataRepositoryTaskNotFound(let message):
            return "DataRepositoryTaskNotFound: \(message ?? "")"
        case .fileSystemNotFound(let message):
            return "FileSystemNotFound: \(message ?? "")"
        case .incompatibleParameterError(let message):
            return "IncompatibleParameterError: \(message ?? "")"
        case .internalServerError(let message):
            return "InternalServerError: \(message ?? "")"
        case .invalidExportPath(let message):
            return "InvalidExportPath: \(message ?? "")"
        case .invalidImportPath(let message):
            return "InvalidImportPath: \(message ?? "")"
        case .invalidNetworkSettings(let message):
            return "InvalidNetworkSettings: \(message ?? "")"
        case .invalidPerUnitStorageThroughput(let message):
            return "InvalidPerUnitStorageThroughput: \(message ?? "")"
        case .missingFileSystemConfiguration(let message):
            return "MissingFileSystemConfiguration: \(message ?? "")"
        case .notServiceResourceError(let message):
            return "NotServiceResourceError: \(message ?? "")"
        case .resourceDoesNotSupportTagging(let message):
            return "ResourceDoesNotSupportTagging: \(message ?? "")"
        case .resourceNotFound(let message):
            return "ResourceNotFound: \(message ?? "")"
        case .serviceLimitExceeded(let message):
            return "ServiceLimitExceeded: \(message ?? "")"
        case .unsupportedOperation(let message):
            return "UnsupportedOperation: \(message ?? "")"
        }
    }
}
