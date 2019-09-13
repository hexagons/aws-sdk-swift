// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for IoTEventsData
public enum IoTEventsDataErrorType: AWSErrorType {
    case internalFailureException(message: String?)
    case invalidRequestException(message: String?)
    case resourceNotFoundException(message: String?)
    case serviceUnavailableException(message: String?)
    case throttlingException(message: String?)
}

extension IoTEventsDataErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InternalFailureException":
            self = .internalFailureException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        default:
            return nil
        }
    }
}

extension IoTEventsDataErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .internalFailureException(let message):
            return "InternalFailureException: \(message ?? "")"
        case .invalidRequestException(let message):
            return "InvalidRequestException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .serviceUnavailableException(let message):
            return "ServiceUnavailableException: \(message ?? "")"
        case .throttlingException(let message):
            return "ThrottlingException: \(message ?? "")"
        }
    }
}
