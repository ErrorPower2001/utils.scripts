#!/usr/bin/sh

export http_proxy='127.0.0.1:7890'
export https_proxy='127.0.0.1:7890'
export all_proxy='127.0.0.1:7891'
exec $*
