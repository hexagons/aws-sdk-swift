// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS CodeDeploy AWS CodeDeploy is a deployment service that automates application deployments to Amazon EC2 instances, on-premises instances running in your own facility, serverless AWS Lambda functions, or applications in an Amazon ECS service. You can deploy a nearly unlimited variety of application content, such as an updated Lambda function, updated applications in an Amazon ECS service, code, web and configuration files, executables, packages, scripts, multimedia files, and so on. AWS CodeDeploy can deploy application content stored in Amazon S3 buckets, GitHub repositories, or Bitbucket repositories. You do not need to make changes to your existing code before you can use AWS CodeDeploy. AWS CodeDeploy makes it easier for you to rapidly release new features, helps you avoid downtime during application deployment, and handles the complexity of updating your applications, without many of the risks associated with error-prone manual deployments.  AWS CodeDeploy Components  Use the information in this guide to help you work with the following AWS CodeDeploy components:    Application: A name that uniquely identifies the application you want to deploy. AWS CodeDeploy uses this name, which functions as a container, to ensure the correct combination of revision, deployment configuration, and deployment group are referenced during a deployment.    Deployment group: A set of individual instances, CodeDeploy Lambda deployment configuration settings, or an Amazon ECS service and network details. A Lambda deployment group specifies how to route traffic to a new version of a Lambda function. An Amazon ECS deployment group specifies the service created in Amazon ECS to deploy, a load balancer, and a listener to reroute production traffic to an updated containerized application. An EC2/On-premises deployment group contains individually tagged instances, Amazon EC2 instances in Amazon EC2 Auto Scaling groups, or both. All deployment groups can specify optional trigger, alarm, and rollback settings.    Deployment configuration: A set of deployment rules and deployment success and failure conditions used by AWS CodeDeploy during a deployment.    Deployment: The process and the components used when updating a Lambda function, a containerized application in an Amazon ECS service, or of installing content on one or more instances.     Application revisions: For an AWS Lambda deployment, this is an AppSpec file that specifies the Lambda function to be updated and one or more functions to validate deployment lifecycle events. For an Amazon ECS deployment, this is an AppSpec file that specifies the Amazon ECS task definition, container, and port where production traffic is rerouted. For an EC2/On-premises deployment, this is an archive file that contains source content—source code, webpages, executable files, and deployment scripts—along with an AppSpec file. Revisions are stored in Amazon S3 buckets or GitHub repositories. For Amazon S3, a revision is uniquely identified by its Amazon S3 object key and its ETag, version, or both. For GitHub, a revision is uniquely identified by its commit ID.   This guide also contains information to help you get details about the instances in your deployments, to make on-premises instances available for AWS CodeDeploy deployments, to get details about a Lambda function deployment, and to get details about Amazon ECS service deployments.  AWS CodeDeploy Information Resources     AWS CodeDeploy User Guide     AWS CodeDeploy API Reference Guide     AWS CLI Reference for AWS CodeDeploy     AWS CodeDeploy Developer Forum   
*/
public struct CodeDeploy {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "CodeDeploy_20141006",
            service: "codedeploy",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2014-10-06",
            endpoint: endpoint,
            serviceEndpoints: ["us-east-1-fips": "codedeploy-fips.us-east-1.amazonaws.com", "us-east-2-fips": "codedeploy-fips.us-east-2.amazonaws.com", "us-west-1-fips": "codedeploy-fips.us-west-1.amazonaws.com", "us-west-2-fips": "codedeploy-fips.us-west-2.amazonaws.com"],
            middlewares: middlewares,
            possibleErrorTypes: [CodeDeployErrorType.self]
        )
    }

    ///  Adds tags to on-premises instances.
    @discardableResult public func addTagsToOnPremisesInstances(_ input: AddTagsToOnPremisesInstancesInput) throws -> Future<Void> {
        return try client.send(operation: "AddTagsToOnPremisesInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about one or more application revisions. The maximum number of application revisions that can be returned is 25.
    public func batchGetApplicationRevisions(_ input: BatchGetApplicationRevisionsInput) throws -> Future<BatchGetApplicationRevisionsOutput> {
        return try client.send(operation: "BatchGetApplicationRevisions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about one or more applications. The maximum number of applications that can be returned is 25.
    public func batchGetApplications(_ input: BatchGetApplicationsInput) throws -> Future<BatchGetApplicationsOutput> {
        return try client.send(operation: "BatchGetApplications", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about one or more deployment groups.
    public func batchGetDeploymentGroups(_ input: BatchGetDeploymentGroupsInput) throws -> Future<BatchGetDeploymentGroupsOutput> {
        return try client.send(operation: "BatchGetDeploymentGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///    This method works, but is deprecated. Use BatchGetDeploymentTargets instead.    Returns an array of one or more instances associated with a deployment. This method works with EC2/On-premises and AWS Lambda compute platforms. The newer BatchGetDeploymentTargets works with all compute platforms. The maximum number of instances that can be returned is 25.
    @available(*, deprecated, message:"This operation is deprecated, use BatchGetDeploymentTargets instead.")
    public func batchGetDeploymentInstances(_ input: BatchGetDeploymentInstancesInput) throws -> Future<BatchGetDeploymentInstancesOutput> {
        return try client.send(operation: "BatchGetDeploymentInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///   Returns an array of one or more targets associated with a deployment. This method works with all compute types and should be used instead of the deprecated BatchGetDeploymentInstances. The maximum number of targets that can be returned is 25.  The type of targets returned depends on the deployment's compute platform:     EC2/On-premises: Information about EC2 instance targets.     AWS Lambda: Information about Lambda functions targets.     Amazon ECS: Information about Amazon ECS service targets.   
    public func batchGetDeploymentTargets(_ input: BatchGetDeploymentTargetsInput) throws -> Future<BatchGetDeploymentTargetsOutput> {
        return try client.send(operation: "BatchGetDeploymentTargets", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about one or more deployments. The maximum number of deployments that can be returned is 25.
    public func batchGetDeployments(_ input: BatchGetDeploymentsInput) throws -> Future<BatchGetDeploymentsOutput> {
        return try client.send(operation: "BatchGetDeployments", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about one or more on-premises instances. The maximum number of on-premises instances that can be returned is 25.
    public func batchGetOnPremisesInstances(_ input: BatchGetOnPremisesInstancesInput) throws -> Future<BatchGetOnPremisesInstancesOutput> {
        return try client.send(operation: "BatchGetOnPremisesInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///  For a blue/green deployment, starts the process of rerouting traffic from instances in the original environment to instances in the replacement environment without waiting for a specified wait time to elapse. (Traffic rerouting, which is achieved by registering instances in the replacement environment with the load balancer, can start as soon as all instances have a status of Ready.) 
    @discardableResult public func continueDeployment(_ input: ContinueDeploymentInput) throws -> Future<Void> {
        return try client.send(operation: "ContinueDeployment", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an application.
    public func createApplication(_ input: CreateApplicationInput) throws -> Future<CreateApplicationOutput> {
        return try client.send(operation: "CreateApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deploys an application revision through the specified deployment group.
    public func createDeployment(_ input: CreateDeploymentInput) throws -> Future<CreateDeploymentOutput> {
        return try client.send(operation: "CreateDeployment", path: "/", httpMethod: "POST", input: input)
    }

    ///   Creates a deployment configuration. 
    public func createDeploymentConfig(_ input: CreateDeploymentConfigInput) throws -> Future<CreateDeploymentConfigOutput> {
        return try client.send(operation: "CreateDeploymentConfig", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a deployment group to which application revisions are deployed.
    public func createDeploymentGroup(_ input: CreateDeploymentGroupInput) throws -> Future<CreateDeploymentGroupOutput> {
        return try client.send(operation: "CreateDeploymentGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an application.
    @discardableResult public func deleteApplication(_ input: DeleteApplicationInput) throws -> Future<Void> {
        return try client.send(operation: "DeleteApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a deployment configuration.  A deployment configuration cannot be deleted if it is currently in use. Predefined configurations cannot be deleted. 
    @discardableResult public func deleteDeploymentConfig(_ input: DeleteDeploymentConfigInput) throws -> Future<Void> {
        return try client.send(operation: "DeleteDeploymentConfig", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a deployment group.
    public func deleteDeploymentGroup(_ input: DeleteDeploymentGroupInput) throws -> Future<DeleteDeploymentGroupOutput> {
        return try client.send(operation: "DeleteDeploymentGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a GitHub account connection.
    public func deleteGitHubAccountToken(_ input: DeleteGitHubAccountTokenInput) throws -> Future<DeleteGitHubAccountTokenOutput> {
        return try client.send(operation: "DeleteGitHubAccountToken", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deregisters an on-premises instance.
    @discardableResult public func deregisterOnPremisesInstance(_ input: DeregisterOnPremisesInstanceInput) throws -> Future<Void> {
        return try client.send(operation: "DeregisterOnPremisesInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about an application.
    public func getApplication(_ input: GetApplicationInput) throws -> Future<GetApplicationOutput> {
        return try client.send(operation: "GetApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about an application revision.
    public func getApplicationRevision(_ input: GetApplicationRevisionInput) throws -> Future<GetApplicationRevisionOutput> {
        return try client.send(operation: "GetApplicationRevision", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a deployment.   The content property of the appSpecContent object in the returned revision is always null. Use GetApplicationRevision and the sha256 property of the returned appSpecContent object to get the content of the deployment’s AppSpec file.  
    public func getDeployment(_ input: GetDeploymentInput) throws -> Future<GetDeploymentOutput> {
        return try client.send(operation: "GetDeployment", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a deployment configuration.
    public func getDeploymentConfig(_ input: GetDeploymentConfigInput) throws -> Future<GetDeploymentConfigOutput> {
        return try client.send(operation: "GetDeploymentConfig", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a deployment group.
    public func getDeploymentGroup(_ input: GetDeploymentGroupInput) throws -> Future<GetDeploymentGroupOutput> {
        return try client.send(operation: "GetDeploymentGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about an instance as part of a deployment.
    @available(*, deprecated, message:"This operation is deprecated, use GetDeploymentTarget instead.")
    public func getDeploymentInstance(_ input: GetDeploymentInstanceInput) throws -> Future<GetDeploymentInstanceOutput> {
        return try client.send(operation: "GetDeploymentInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///   Returns information about a deployment target. 
    public func getDeploymentTarget(_ input: GetDeploymentTargetInput) throws -> Future<GetDeploymentTargetOutput> {
        return try client.send(operation: "GetDeploymentTarget", path: "/", httpMethod: "POST", input: input)
    }

    ///   Gets information about an on-premises instance. 
    public func getOnPremisesInstance(_ input: GetOnPremisesInstanceInput) throws -> Future<GetOnPremisesInstanceOutput> {
        return try client.send(operation: "GetOnPremisesInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists information about revisions for an application.
    public func listApplicationRevisions(_ input: ListApplicationRevisionsInput) throws -> Future<ListApplicationRevisionsOutput> {
        return try client.send(operation: "ListApplicationRevisions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the applications registered with the IAM user or AWS account.
    public func listApplications(_ input: ListApplicationsInput) throws -> Future<ListApplicationsOutput> {
        return try client.send(operation: "ListApplications", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the deployment configurations with the IAM user or AWS account.
    public func listDeploymentConfigs(_ input: ListDeploymentConfigsInput) throws -> Future<ListDeploymentConfigsOutput> {
        return try client.send(operation: "ListDeploymentConfigs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the deployment groups for an application registered with the IAM user or AWS account.
    public func listDeploymentGroups(_ input: ListDeploymentGroupsInput) throws -> Future<ListDeploymentGroupsOutput> {
        return try client.send(operation: "ListDeploymentGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///    The newer BatchGetDeploymentTargets should be used instead because it works with all compute types. ListDeploymentInstances throws an exception if it is used with a compute platform other than EC2/On-premises or AWS Lambda.    Lists the instance for a deployment associated with the IAM user or AWS account. 
    @available(*, deprecated, message:"This operation is deprecated, use ListDeploymentTargets instead.")
    public func listDeploymentInstances(_ input: ListDeploymentInstancesInput) throws -> Future<ListDeploymentInstancesOutput> {
        return try client.send(operation: "ListDeploymentInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///   Returns an array of target IDs that are associated a deployment. 
    public func listDeploymentTargets(_ input: ListDeploymentTargetsInput) throws -> Future<ListDeploymentTargetsOutput> {
        return try client.send(operation: "ListDeploymentTargets", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the deployments in a deployment group for an application registered with the IAM user or AWS account.
    public func listDeployments(_ input: ListDeploymentsInput) throws -> Future<ListDeploymentsOutput> {
        return try client.send(operation: "ListDeployments", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the names of stored connections to GitHub accounts.
    public func listGitHubAccountTokenNames(_ input: ListGitHubAccountTokenNamesInput) throws -> Future<ListGitHubAccountTokenNamesOutput> {
        return try client.send(operation: "ListGitHubAccountTokenNames", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of names for one or more on-premises instances. Unless otherwise specified, both registered and deregistered on-premises instance names are listed. To list only registered or deregistered on-premises instance names, use the registration status parameter.
    public func listOnPremisesInstances(_ input: ListOnPremisesInstancesInput) throws -> Future<ListOnPremisesInstancesOutput> {
        return try client.send(operation: "ListOnPremisesInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///   Returns a list of tags for the resource identified by a specified ARN. Tags are used to organize and categorize your CodeDeploy resources. 
    public func listTagsForResource(_ input: ListTagsForResourceInput) throws -> Future<ListTagsForResourceOutput> {
        return try client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///   Sets the result of a Lambda validation function. The function validates one or both lifecycle events (BeforeAllowTraffic and AfterAllowTraffic) and returns Succeeded or Failed. 
    public func putLifecycleEventHookExecutionStatus(_ input: PutLifecycleEventHookExecutionStatusInput) throws -> Future<PutLifecycleEventHookExecutionStatusOutput> {
        return try client.send(operation: "PutLifecycleEventHookExecutionStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Registers with AWS CodeDeploy a revision for the specified application.
    @discardableResult public func registerApplicationRevision(_ input: RegisterApplicationRevisionInput) throws -> Future<Void> {
        return try client.send(operation: "RegisterApplicationRevision", path: "/", httpMethod: "POST", input: input)
    }

    ///  Registers an on-premises instance.  Only one IAM ARN (an IAM session ARN or IAM user ARN) is supported in the request. You cannot use both. 
    @discardableResult public func registerOnPremisesInstance(_ input: RegisterOnPremisesInstanceInput) throws -> Future<Void> {
        return try client.send(operation: "RegisterOnPremisesInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes one or more tags from one or more on-premises instances.
    @discardableResult public func removeTagsFromOnPremisesInstances(_ input: RemoveTagsFromOnPremisesInstancesInput) throws -> Future<Void> {
        return try client.send(operation: "RemoveTagsFromOnPremisesInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///  In a blue/green deployment, overrides any specified wait time and starts terminating instances immediately after the traffic routing is complete.
    @available(*, deprecated, message:"This operation is deprecated, use ContinueDeployment with DeploymentWaitType instead.")
    @discardableResult public func skipWaitTimeForInstanceTermination(_ input: SkipWaitTimeForInstanceTerminationInput) throws -> Future<Void> {
        return try client.send(operation: "SkipWaitTimeForInstanceTermination", path: "/", httpMethod: "POST", input: input)
    }

    ///  Attempts to stop an ongoing deployment.
    public func stopDeployment(_ input: StopDeploymentInput) throws -> Future<StopDeploymentOutput> {
        return try client.send(operation: "StopDeployment", path: "/", httpMethod: "POST", input: input)
    }

    ///   Associates the list of tags in the input Tags parameter with the resource identified by the ResourceArn input parameter. 
    public func tagResource(_ input: TagResourceInput) throws -> Future<TagResourceOutput> {
        return try client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///   Disassociates a resource from a list of tags. The resource is identified by the ResourceArn input parameter. The tags are identfied by the list of keys in the TagKeys input parameter. 
    public func untagResource(_ input: UntagResourceInput) throws -> Future<UntagResourceOutput> {
        return try client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Changes the name of an application.
    @discardableResult public func updateApplication(_ input: UpdateApplicationInput) throws -> Future<Void> {
        return try client.send(operation: "UpdateApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Changes information about a deployment group.
    public func updateDeploymentGroup(_ input: UpdateDeploymentGroupInput) throws -> Future<UpdateDeploymentGroupOutput> {
        return try client.send(operation: "UpdateDeploymentGroup", path: "/", httpMethod: "POST", input: input)
    }
}
