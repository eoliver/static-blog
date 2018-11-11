#!/bin/bash

DATE=`date +%Y-%m-%d-`
post_name=$DATE$1.md

cat <<EOT >> $post_name
---
layout: post
author: serverless
---
EOT

vi $post_name
