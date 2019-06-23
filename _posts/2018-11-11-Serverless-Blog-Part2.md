---
layout: post
title: "Serverless Blog Part 2"
author: serverless
categories: [AWS]
---
In part 2 we examine the anatomy of a commit to live static blog.

## Anatomy of Static Blog and Pipeline in Cloudformation
In this section we'll disect and lay out the resources needed to create, deploy, and host a static blog in AWS.

### Website Enabled S3 Bucket
Website Enabled S3 Bucket
#### Website Enabled S3 Bucket Policy

### Cloudfront Distribution
Cloudfront Distribution
#### Cloudfront Origin Access Identity
Cloudfront Origin Access Identity

### SSL Certificate through Amazon Certificate Manager
SSL Certificate through Amazon Certificate Manager
#### Verifying SSL Certificate Request
Verifying SSL Cert Request

### CodePipeline
Elements of CodePipeline
#### Artifact S3 Bucket
#### Artifact S3 Bucket Policy
#### Webhooks
#### Defining the Pipeline

### CodeBuild
Defining the build environment 

### IAM Roles and Policies
Granting CodePipeline and CodeBuild services access to other resources
