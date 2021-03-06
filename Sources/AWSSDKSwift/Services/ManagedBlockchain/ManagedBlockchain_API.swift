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
Client object for interacting with AWS ManagedBlockchain service.

 Amazon Managed Blockchain is a fully managed service for creating and managing blockchain networks using open source frameworks. Blockchain allows you to build applications where multiple parties can securely and transparently run transactions and share data without the need for a trusted, central authority. Currently, Managed Blockchain supports the Hyperledger Fabric open source framework. 
*/
public struct ManagedBlockchain {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the ManagedBlockchain client
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
            service: "managedblockchain",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-09-24",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [ManagedBlockchainErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates a member within a Managed Blockchain network.
    public func createMember(_ input: CreateMemberInput) -> EventLoopFuture<CreateMemberOutput> {
        return client.send(operation: "CreateMember", path: "/networks/{networkId}/members", httpMethod: "POST", input: input)
    }

    ///  Creates a new blockchain network using Amazon Managed Blockchain.
    public func createNetwork(_ input: CreateNetworkInput) -> EventLoopFuture<CreateNetworkOutput> {
        return client.send(operation: "CreateNetwork", path: "/networks", httpMethod: "POST", input: input)
    }

    ///  Creates a peer node in a member.
    public func createNode(_ input: CreateNodeInput) -> EventLoopFuture<CreateNodeOutput> {
        return client.send(operation: "CreateNode", path: "/networks/{networkId}/members/{memberId}/nodes", httpMethod: "POST", input: input)
    }

    ///  Creates a proposal for a change to the network that other members of the network can vote on, for example, a proposal to add a new member to the network. Any member can create a proposal.
    public func createProposal(_ input: CreateProposalInput) -> EventLoopFuture<CreateProposalOutput> {
        return client.send(operation: "CreateProposal", path: "/networks/{networkId}/proposals", httpMethod: "POST", input: input)
    }

    ///  Deletes a member. Deleting a member removes the member and all associated resources from the network. DeleteMember can only be called for a specified MemberId if the principal performing the action is associated with the AWS account that owns the member. In all other cases, the DeleteMember action is carried out as the result of an approved proposal to remove a member. If MemberId is the last member in a network specified by the last AWS account, the network is deleted also.
    public func deleteMember(_ input: DeleteMemberInput) -> EventLoopFuture<DeleteMemberOutput> {
        return client.send(operation: "DeleteMember", path: "/networks/{networkId}/members/{memberId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a peer node from a member that your AWS account owns. All data on the node is lost and cannot be recovered.
    public func deleteNode(_ input: DeleteNodeInput) -> EventLoopFuture<DeleteNodeOutput> {
        return client.send(operation: "DeleteNode", path: "/networks/{networkId}/members/{memberId}/nodes/{nodeId}", httpMethod: "DELETE", input: input)
    }

    ///  Returns detailed information about a member.
    public func getMember(_ input: GetMemberInput) -> EventLoopFuture<GetMemberOutput> {
        return client.send(operation: "GetMember", path: "/networks/{networkId}/members/{memberId}", httpMethod: "GET", input: input)
    }

    ///  Returns detailed information about a network.
    public func getNetwork(_ input: GetNetworkInput) -> EventLoopFuture<GetNetworkOutput> {
        return client.send(operation: "GetNetwork", path: "/networks/{networkId}", httpMethod: "GET", input: input)
    }

    ///  Returns detailed information about a peer node.
    public func getNode(_ input: GetNodeInput) -> EventLoopFuture<GetNodeOutput> {
        return client.send(operation: "GetNode", path: "/networks/{networkId}/members/{memberId}/nodes/{nodeId}", httpMethod: "GET", input: input)
    }

    ///  Returns detailed information about a proposal.
    public func getProposal(_ input: GetProposalInput) -> EventLoopFuture<GetProposalOutput> {
        return client.send(operation: "GetProposal", path: "/networks/{networkId}/proposals/{proposalId}", httpMethod: "GET", input: input)
    }

    ///  Returns a listing of all invitations made on the specified network.
    public func listInvitations(_ input: ListInvitationsInput) -> EventLoopFuture<ListInvitationsOutput> {
        return client.send(operation: "ListInvitations", path: "/invitations", httpMethod: "GET", input: input)
    }

    ///  Returns a listing of the members in a network and properties of their configurations.
    public func listMembers(_ input: ListMembersInput) -> EventLoopFuture<ListMembersOutput> {
        return client.send(operation: "ListMembers", path: "/networks/{networkId}/members", httpMethod: "GET", input: input)
    }

    ///  Returns information about the networks in which the current AWS account has members.
    public func listNetworks(_ input: ListNetworksInput) -> EventLoopFuture<ListNetworksOutput> {
        return client.send(operation: "ListNetworks", path: "/networks", httpMethod: "GET", input: input)
    }

    ///  Returns information about the nodes within a network.
    public func listNodes(_ input: ListNodesInput) -> EventLoopFuture<ListNodesOutput> {
        return client.send(operation: "ListNodes", path: "/networks/{networkId}/members/{memberId}/nodes", httpMethod: "GET", input: input)
    }

    ///  Returns the listing of votes for a specified proposal, including the value of each vote and the unique identifier of the member that cast the vote.
    public func listProposalVotes(_ input: ListProposalVotesInput) -> EventLoopFuture<ListProposalVotesOutput> {
        return client.send(operation: "ListProposalVotes", path: "/networks/{networkId}/proposals/{proposalId}/votes", httpMethod: "GET", input: input)
    }

    ///  Returns a listing of proposals for the network.
    public func listProposals(_ input: ListProposalsInput) -> EventLoopFuture<ListProposalsOutput> {
        return client.send(operation: "ListProposals", path: "/networks/{networkId}/proposals", httpMethod: "GET", input: input)
    }

    ///  Rejects an invitation to join a network. This action can be called by a principal in an AWS account that has received an invitation to create a member and join a network.
    public func rejectInvitation(_ input: RejectInvitationInput) -> EventLoopFuture<RejectInvitationOutput> {
        return client.send(operation: "RejectInvitation", path: "/invitations/{invitationId}", httpMethod: "DELETE", input: input)
    }

    ///  Updates a member configuration with new parameters.
    public func updateMember(_ input: UpdateMemberInput) -> EventLoopFuture<UpdateMemberOutput> {
        return client.send(operation: "UpdateMember", path: "/networks/{networkId}/members/{memberId}", httpMethod: "PATCH", input: input)
    }

    ///  Updates a node configuration with new parameters.
    public func updateNode(_ input: UpdateNodeInput) -> EventLoopFuture<UpdateNodeOutput> {
        return client.send(operation: "UpdateNode", path: "/networks/{networkId}/members/{memberId}/nodes/{nodeId}", httpMethod: "PATCH", input: input)
    }

    ///  Casts a vote for a specified ProposalId on behalf of a member. The member to vote as, specified by VoterMemberId, must be in the same AWS account as the principal that calls the action.
    public func voteOnProposal(_ input: VoteOnProposalInput) -> EventLoopFuture<VoteOnProposalOutput> {
        return client.send(operation: "VoteOnProposal", path: "/networks/{networkId}/proposals/{proposalId}/votes", httpMethod: "POST", input: input)
    }
}
