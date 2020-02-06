// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension CodePipeline {

    ///  Lists the action executions that have occurred in a pipeline.
    public func listActionExecutionsPaginator(_ input: ListActionExecutionsInput, onPage: @escaping (ListActionExecutionsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listActionExecutions, tokenKey: \ListActionExecutionsOutput.nextToken, onPage: onPage)
    }

    ///  Gets a summary of all AWS CodePipeline action types associated with your account.
    public func listActionTypesPaginator(_ input: ListActionTypesInput, onPage: @escaping (ListActionTypesOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listActionTypes, tokenKey: \ListActionTypesOutput.nextToken, onPage: onPage)
    }

    ///  Gets a summary of the most recent executions for a pipeline.
    public func listPipelineExecutionsPaginator(_ input: ListPipelineExecutionsInput, onPage: @escaping (ListPipelineExecutionsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPipelineExecutions, tokenKey: \ListPipelineExecutionsOutput.nextToken, onPage: onPage)
    }

    ///  Gets a summary of all of the pipelines associated with your account.
    public func listPipelinesPaginator(_ input: ListPipelinesInput, onPage: @escaping (ListPipelinesOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPipelines, tokenKey: \ListPipelinesOutput.nextToken, onPage: onPage)
    }

    ///  Gets the set of key-value pairs (metadata) that are used to manage the resource.
    public func listTagsForResourcePaginator(_ input: ListTagsForResourceInput, onPage: @escaping (ListTagsForResourceOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTagsForResource, tokenKey: \ListTagsForResourceOutput.nextToken, onPage: onPage)
    }

    ///  Gets a listing of all the webhooks in this AWS Region for this account. The output lists all webhooks and includes the webhook URL and ARN and the configuration for each webhook.
    public func listWebhooksPaginator(_ input: ListWebhooksInput, onPage: @escaping (ListWebhooksOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listWebhooks, tokenKey: \ListWebhooksOutput.nextToken, onPage: onPage)
    }

}

extension CodePipeline.ListActionExecutionsInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CodePipeline.ListActionExecutionsInput {
        return .init(
            filter: self.filter, 
            maxResults: self.maxResults, 
            nextToken: token, 
            pipelineName: self.pipelineName
        )

    }
}

extension CodePipeline.ListActionTypesInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CodePipeline.ListActionTypesInput {
        return .init(
            actionOwnerFilter: self.actionOwnerFilter, 
            nextToken: token
        )

    }
}

extension CodePipeline.ListPipelineExecutionsInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CodePipeline.ListPipelineExecutionsInput {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            pipelineName: self.pipelineName
        )

    }
}

extension CodePipeline.ListPipelinesInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CodePipeline.ListPipelinesInput {
        return .init(
            nextToken: token
        )

    }
}

extension CodePipeline.ListTagsForResourceInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CodePipeline.ListTagsForResourceInput {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            resourceArn: self.resourceArn
        )

    }
}

extension CodePipeline.ListWebhooksInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> CodePipeline.ListWebhooksInput {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

