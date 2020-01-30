#!/bin/bash
# Put any tasks you would like to have carried
# out when the container is first created here
# Set the root passwd from env var or gen a random one
if [[ -z "${ROOT_PASSWORD}" ]]; then
 ROOT_PASSWORD=`pwgen -c -n -1 12`
fi
echo "root:$ROOT_PASSWORD" | chpasswd
echo "root login password: $ROOT_PASSWORD"


# Launch supervisor
supervisord -n
