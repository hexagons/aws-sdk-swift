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
Client object for interacting with AWS ElasticsearchService service.

Amazon Elasticsearch Configuration Service Use the Amazon Elasticsearch Configuration API to create, configure, and manage Elasticsearch domains. For sample code that uses the Configuration API, see the Amazon Elasticsearch Service Developer Guide. The guide also contains sample code for sending signed HTTP requests to the Elasticsearch APIs. The endpoint for configuration service requests is region-specific: es.region.amazonaws.com. For example, es.us-east-1.amazonaws.com. For a current list of supported regions and endpoints, see Regions and Endpoints.
*/
public struct ElasticsearchService {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the ElasticsearchService client
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
            service: "es",
            serviceProtocol: ServiceProtocol(type: .restjson),
            apiVersion: "2015-01-01",
            endpoint: endpoint,
            serviceEndpoints: ["fips": "es-fips.us-west-1.amazonaws.com"],
            middlewares: middlewares,
            possibleErrorTypes: [ElasticsearchServiceErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Attaches tags to an existing Elasticsearch domain. Tags are a set of case-sensitive key value pairs. An Elasticsearch domain may have up to 10 tags. See  Tagging Amazon Elasticsearch Service Domains for more information.
    @discardableResult public func addTags(_ input: AddTagsRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "AddTags", path: "/2015-01-01/tags", httpMethod: "POST", input: input)
    }

    ///  Associates a package with an Amazon ES domain.
    public func associatePackage(_ input: AssociatePackageRequest) -> EventLoopFuture<AssociatePackageResponse> {
        return client.send(operation: "AssociatePackage", path: "/2015-01-01/packages/associate/{PackageID}/{DomainName}", httpMethod: "POST", input: input)
    }

    ///  Cancels a scheduled service software update for an Amazon ES domain. You can only perform this operation before the AutomatedUpdateDate and when the UpdateStatus is in the PENDING_UPDATE state.
    public func cancelElasticsearchServiceSoftwareUpdate(_ input: CancelElasticsearchServiceSoftwareUpdateRequest) -> EventLoopFuture<CancelElasticsearchServiceSoftwareUpdateResponse> {
        return client.send(operation: "CancelElasticsearchServiceSoftwareUpdate", path: "/2015-01-01/es/serviceSoftwareUpdate/cancel", httpMethod: "POST", input: input)
    }

    ///  Creates a new Elasticsearch domain. For more information, see Creating Elasticsearch Domains in the Amazon Elasticsearch Service Developer Guide.
    public func createElasticsearchDomain(_ input: CreateElasticsearchDomainRequest) -> EventLoopFuture<CreateElasticsearchDomainResponse> {
        return client.send(operation: "CreateElasticsearchDomain", path: "/2015-01-01/es/domain", httpMethod: "POST", input: input)
    }

    ///  Create a package for use with Amazon ES domains.
    public func createPackage(_ input: CreatePackageRequest) -> EventLoopFuture<CreatePackageResponse> {
        return client.send(operation: "CreatePackage", path: "/2015-01-01/packages", httpMethod: "POST", input: input)
    }

    ///  Permanently deletes the specified Elasticsearch domain and all of its data. Once a domain is deleted, it cannot be recovered.
    public func deleteElasticsearchDomain(_ input: DeleteElasticsearchDomainRequest) -> EventLoopFuture<DeleteElasticsearchDomainResponse> {
        return client.send(operation: "DeleteElasticsearchDomain", path: "/2015-01-01/es/domain/{DomainName}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the service-linked role that Elasticsearch Service uses to manage and maintain VPC domains. Role deletion will fail if any existing VPC domains use the role. You must delete any such Elasticsearch domains before deleting the role. See Deleting Elasticsearch Service Role in VPC Endpoints for Amazon Elasticsearch Service Domains.
    @discardableResult public func deleteElasticsearchServiceRole() -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteElasticsearchServiceRole", path: "/2015-01-01/es/role", httpMethod: "DELETE")
    }

    ///  Delete the package.
    public func deletePackage(_ input: DeletePackageRequest) -> EventLoopFuture<DeletePackageResponse> {
        return client.send(operation: "DeletePackage", path: "/2015-01-01/packages/{PackageID}", httpMethod: "DELETE", input: input)
    }

    ///  Returns domain configuration information about the specified Elasticsearch domain, including the domain ID, domain endpoint, and domain ARN.
    public func describeElasticsearchDomain(_ input: DescribeElasticsearchDomainRequest) -> EventLoopFuture<DescribeElasticsearchDomainResponse> {
        return client.send(operation: "DescribeElasticsearchDomain", path: "/2015-01-01/es/domain/{DomainName}", httpMethod: "GET", input: input)
    }

    ///  Provides cluster configuration information about the specified Elasticsearch domain, such as the state, creation date, update version, and update date for cluster options.
    public func describeElasticsearchDomainConfig(_ input: DescribeElasticsearchDomainConfigRequest) -> EventLoopFuture<DescribeElasticsearchDomainConfigResponse> {
        return client.send(operation: "DescribeElasticsearchDomainConfig", path: "/2015-01-01/es/domain/{DomainName}/config", httpMethod: "GET", input: input)
    }

    ///  Returns domain configuration information about the specified Elasticsearch domains, including the domain ID, domain endpoint, and domain ARN.
    public func describeElasticsearchDomains(_ input: DescribeElasticsearchDomainsRequest) -> EventLoopFuture<DescribeElasticsearchDomainsResponse> {
        return client.send(operation: "DescribeElasticsearchDomains", path: "/2015-01-01/es/domain-info", httpMethod: "POST", input: input)
    }

    ///   Describe Elasticsearch Limits for a given InstanceType and ElasticsearchVersion. When modifying existing Domain, specify the  DomainName  to know what Limits are supported for modifying. 
    public func describeElasticsearchInstanceTypeLimits(_ input: DescribeElasticsearchInstanceTypeLimitsRequest) -> EventLoopFuture<DescribeElasticsearchInstanceTypeLimitsResponse> {
        return client.send(operation: "DescribeElasticsearchInstanceTypeLimits", path: "/2015-01-01/es/instanceTypeLimits/{ElasticsearchVersion}/{InstanceType}", httpMethod: "GET", input: input)
    }

    ///  Describes all packages available to Amazon ES. Includes options for filtering, limiting the number of results, and pagination.
    public func describePackages(_ input: DescribePackagesRequest) -> EventLoopFuture<DescribePackagesResponse> {
        return client.send(operation: "DescribePackages", path: "/2015-01-01/packages/describe", httpMethod: "POST", input: input)
    }

    ///  Lists available reserved Elasticsearch instance offerings.
    public func describeReservedElasticsearchInstanceOfferings(_ input: DescribeReservedElasticsearchInstanceOfferingsRequest) -> EventLoopFuture<DescribeReservedElasticsearchInstanceOfferingsResponse> {
        return client.send(operation: "DescribeReservedElasticsearchInstanceOfferings", path: "/2015-01-01/es/reservedInstanceOfferings", httpMethod: "GET", input: input)
    }

    ///  Returns information about reserved Elasticsearch instances for this account.
    public func describeReservedElasticsearchInstances(_ input: DescribeReservedElasticsearchInstancesRequest) -> EventLoopFuture<DescribeReservedElasticsearchInstancesResponse> {
        return client.send(operation: "DescribeReservedElasticsearchInstances", path: "/2015-01-01/es/reservedInstances", httpMethod: "GET", input: input)
    }

    ///  Dissociates a package from the Amazon ES domain.
    public func dissociatePackage(_ input: DissociatePackageRequest) -> EventLoopFuture<DissociatePackageResponse> {
        return client.send(operation: "DissociatePackage", path: "/2015-01-01/packages/dissociate/{PackageID}/{DomainName}", httpMethod: "POST", input: input)
    }

    ///   Returns a list of upgrade compatible Elastisearch versions. You can optionally pass a  DomainName  to get all upgrade compatible Elasticsearch versions for that specific domain. 
    public func getCompatibleElasticsearchVersions(_ input: GetCompatibleElasticsearchVersionsRequest) -> EventLoopFuture<GetCompatibleElasticsearchVersionsResponse> {
        return client.send(operation: "GetCompatibleElasticsearchVersions", path: "/2015-01-01/es/compatibleVersions", httpMethod: "GET", input: input)
    }

    ///  Retrieves the complete history of the last 10 upgrades that were performed on the domain.
    public func getUpgradeHistory(_ input: GetUpgradeHistoryRequest) -> EventLoopFuture<GetUpgradeHistoryResponse> {
        return client.send(operation: "GetUpgradeHistory", path: "/2015-01-01/es/upgradeDomain/{DomainName}/history", httpMethod: "GET", input: input)
    }

    ///  Retrieves the latest status of the last upgrade or upgrade eligibility check that was performed on the domain.
    public func getUpgradeStatus(_ input: GetUpgradeStatusRequest) -> EventLoopFuture<GetUpgradeStatusResponse> {
        return client.send(operation: "GetUpgradeStatus", path: "/2015-01-01/es/upgradeDomain/{DomainName}/status", httpMethod: "GET", input: input)
    }

    ///  Returns the name of all Elasticsearch domains owned by the current user's account. 
    public func listDomainNames() -> EventLoopFuture<ListDomainNamesResponse> {
        return client.send(operation: "ListDomainNames", path: "/2015-01-01/domain", httpMethod: "GET")
    }

    ///  Lists all Amazon ES domains associated with the package.
    public func listDomainsForPackage(_ input: ListDomainsForPackageRequest) -> EventLoopFuture<ListDomainsForPackageResponse> {
        return client.send(operation: "ListDomainsForPackage", path: "/2015-01-01/packages/{PackageID}/domains", httpMethod: "GET", input: input)
    }

    ///  List all Elasticsearch instance types that are supported for given ElasticsearchVersion
    public func listElasticsearchInstanceTypes(_ input: ListElasticsearchInstanceTypesRequest) -> EventLoopFuture<ListElasticsearchInstanceTypesResponse> {
        return client.send(operation: "ListElasticsearchInstanceTypes", path: "/2015-01-01/es/instanceTypes/{ElasticsearchVersion}", httpMethod: "GET", input: input)
    }

    ///  List all supported Elasticsearch versions
    public func listElasticsearchVersions(_ input: ListElasticsearchVersionsRequest) -> EventLoopFuture<ListElasticsearchVersionsResponse> {
        return client.send(operation: "ListElasticsearchVersions", path: "/2015-01-01/es/versions", httpMethod: "GET", input: input)
    }

    ///  Lists all packages associated with the Amazon ES domain.
    public func listPackagesForDomain(_ input: ListPackagesForDomainRequest) -> EventLoopFuture<ListPackagesForDomainResponse> {
        return client.send(operation: "ListPackagesForDomain", path: "/2015-01-01/domain/{DomainName}/packages", httpMethod: "GET", input: input)
    }

    ///  Returns all tags for the given Elasticsearch domain.
    public func listTags(_ input: ListTagsRequest) -> EventLoopFuture<ListTagsResponse> {
        return client.send(operation: "ListTags", path: "/2015-01-01/tags/", httpMethod: "GET", input: input)
    }

    ///  Allows you to purchase reserved Elasticsearch instances.
    public func purchaseReservedElasticsearchInstanceOffering(_ input: PurchaseReservedElasticsearchInstanceOfferingRequest) -> EventLoopFuture<PurchaseReservedElasticsearchInstanceOfferingResponse> {
        return client.send(operation: "PurchaseReservedElasticsearchInstanceOffering", path: "/2015-01-01/es/purchaseReservedInstanceOffering", httpMethod: "POST", input: input)
    }

    ///  Removes the specified set of tags from the specified Elasticsearch domain.
    @discardableResult public func removeTags(_ input: RemoveTagsRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "RemoveTags", path: "/2015-01-01/tags-removal", httpMethod: "POST", input: input)
    }

    ///  Schedules a service software update for an Amazon ES domain.
    public func startElasticsearchServiceSoftwareUpdate(_ input: StartElasticsearchServiceSoftwareUpdateRequest) -> EventLoopFuture<StartElasticsearchServiceSoftwareUpdateResponse> {
        return client.send(operation: "StartElasticsearchServiceSoftwareUpdate", path: "/2015-01-01/es/serviceSoftwareUpdate/start", httpMethod: "POST", input: input)
    }

    ///  Modifies the cluster configuration of the specified Elasticsearch domain, setting as setting the instance type and the number of instances. 
    public func updateElasticsearchDomainConfig(_ input: UpdateElasticsearchDomainConfigRequest) -> EventLoopFuture<UpdateElasticsearchDomainConfigResponse> {
        return client.send(operation: "UpdateElasticsearchDomainConfig", path: "/2015-01-01/es/domain/{DomainName}/config", httpMethod: "POST", input: input)
    }

    ///  Allows you to either upgrade your domain or perform an Upgrade eligibility check to a compatible Elasticsearch version.
    public func upgradeElasticsearchDomain(_ input: UpgradeElasticsearchDomainRequest) -> EventLoopFuture<UpgradeElasticsearchDomainResponse> {
        return client.send(operation: "UpgradeElasticsearchDomain", path: "/2015-01-01/es/upgradeDomain", httpMethod: "POST", input: input)
    }
}
