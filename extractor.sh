#!/bin/bash
./.mailcount.sh | sed -n '17p' | grep -oP '(?<=have ).*?(?= unread)' > ~/michael/.unread
