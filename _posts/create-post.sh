#!/bin/bash

DATE=`date +%Y-%m-%d`
post_name=$DATE-$1.md

cat <<EOT >> $post_name
---
layout: post
title: "$1"
date: $DATE
categories: [AWS]
---
EOT

vi $post_name
