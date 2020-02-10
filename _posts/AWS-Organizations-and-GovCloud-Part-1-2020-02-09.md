---
layout: post
title: "AWS Organizations and GovCloud"
date: 2020-02-09 00:18:23 +0700
categories: [GovCloud]
---

## Purpose:
Explore the use of AWS Organizations in AWS GovCloud, specifically creating new GovCloud accounts using a Commericial AWS Account Organization Master through the [CreateGovCloudAccount API](https://docs.aws.amazon.com/organizations/latest/APIReference/API_CreateGovCloudAccount.html)

## Cost:
$0

## Organizing the Project:
* Creating the first Commercial Account
    * [Privacy.com](https://privacy.com) - Virtual Debit Card for account billing.
    * [Register](https://portal.aws.amazon.com/gp/aws/developer/registration/index.html?nc2=h_ct&src=default) a new account with Amazon. 
    * Initial account configuration:
        * MFA Protect Root Account.
        * Create a password policy.
        * Create an IAM Group for Administrators.
        * Attach FullAdminAccess policy to group.
        * Create IAM User in Admin group.
        * MFA Protect IAM Admin user.
        * Apply IAM policy to enforce MFA for programmatic access to Admin group.
        * Allow IAM users billing access. (optional)

* Create GovCloud account
    * Log in as Root.
    * Account Settings.
    * Sign up for AWS GovCloud (US).
    * Email: AWS GovCloud (US) Access Request Received
    * Email: AWS GovCloud (US) Access Approved!
        * Follow instructions for initial login.
    * Initial account configuration:
        * Create a password policy.
        * Create an IAM Group for Administrators.
        * Attach FullAdminAccess policy to group.
        * Add Administrator IAM User in Admin group.
        * MFA Protect IAM Admin user.
        * Apply IAM policy to enforce MFA for programmatic access to Admin group.

* Create Commercial AWS Organization

* Create GovCloud AWS Organization

* Create GovCloud Account with [CreateGovCloudAccount API](https://docs.aws.amazon.com/organizations/latest/APIReference/API_CreateGovCloudAccount.html):
    * Create Commercial IAM Administrator User Access Keys.
    * Create GovCloud IAM Administrator User Access Keys.
    * Install or upgrade to latest AWS CLI

```tcl
aws organizations create-gov-cloud-account --email your.name@domain.com --account-name awsorgmember1 --profile awsorgmaster

aws organizations describe-create-account-status --create-account-request-id car-987fadf87w92l1085la3748 --profile awsorgmaster
```
