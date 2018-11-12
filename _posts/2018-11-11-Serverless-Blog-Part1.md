---
author: serverless
title: "Serverless Blog Part 1"
series: serverless-blog
part: "Part I"
---

# Part 1 of the Serverless Blog

**Resources** used to setup solution:

https://medium.freecodecamp.org/how-to-continuously-deploy-a-static-website-in-style-using-github-and-aws-3df7ecb58d9c
https://stormpath.com/blog/ultimate-guide-deploying-static-site-aws
https://alexbilbie.com/2016/12/codebuild-codepipeline-update-jekyll-website/
https://www.josephecombs.com/2018/03/05/how-to-make-an-AWS-S3-static-website-with-ssl

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
