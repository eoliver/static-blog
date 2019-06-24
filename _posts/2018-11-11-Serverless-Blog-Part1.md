---
layout: post
title: "Serverless Blog Part 1"
date: 2013-12-23 00:18:23 +0700
categories: [AWS]
---

# Part 1 of the Serverless Blog


## Why generate static sites?
* Cheap and relatively easy

## Understanding static site generators
* Jekyll

## Organizing the project
**_Goal:_ With one commit build,test,deploy**

* Local Resources
    * Directories
    * Git
* Cloud Resources (AWS)
    * AWS S3 (Hosting)
    * GitHub (Source Control) vs. CodeCommit
        * Don't' think CodeCommit offers easy public review of repos for: current employer, recruiters, prospective employers 
    * Codepipeline (Build and Deploy)
        * CodeBuild (Remotely Generate Static files)

## Implementing other walkthroughs
### Filling in Gaps, Explaining pitfalls

## Extending previous walkthroughs
**What's the point of blogging about implementing what other blogs have done?**

* Extending ideas to DevOps-ify this project
    * Add automated testing
    * CodeDeploy? CodeBuild creates/stores an artifact, but just deploys the site content from Buildspec.yml command
    * Project management - OpenProject, Trello
    * Seperate Dev, Stage repositories
        * Corresponding pipelines triggered on commits to these branches
        * dev.blog.sitename
        * stage.blog.sitename?
    * CodeBuild - BuildSpec.yml instead of just gem instally jekyll include a Gemfile and Gemfile.lock
        * Keep builds through codebuild standard, Dev branch can do "bundle update" then test before prod 
    * Everything As Code: AWS Resources, Deployment

**Resources** used to setup solution:
* https://medium.freecodecamp.org/how-to-continuously-deploy-a-static-website-in-style-using-github-and-aws-3df7ecb58d9c
* https://stormpath.com/blog/ultimate-guide-deploying-static-site-aws
* https://alexbilbie.com/2016/12/codebuild-codepipeline-update-jekyll-website/
* https://www.josephecombs.com/2018/03/05/how-to-make-an-AWS-S3-static-website-with-ssl
* https://jonbake.com/blog/2018/08/29/setting-up-codebuild-rails.html
* https://github.com/wsargent/docker-cheat-sheet#containers
* https://github.com/aws/aws-codebuild-docker-images
* https://github.com/aws-samples/codepipeline-nested-cfn/blob/master/codepipeline-cfn-codebuild.yml
* https://chalice-workshop.readthedocs.io/en/latest/todo-app/part2/02-pipeline.html
* https://medium.com/@fintelics/devops-tutorial-how-to-implement-codepipeline-with-github-aed5c0e654f9
* https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/quickref-cloudfront.html
* https://aws.amazon.com/premiumsupport/knowledge-center/cloudfront-invalid-viewer-certificate/
* https://www.reddit.com/r/aws/comments/5kmv04/how_long_does_cloudfront_take_to_take_effect/
