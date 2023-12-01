#!/bin/bash
./.mailcount.sh | sed -n '17p' | grep -oP '(?<=have ).*?(?= unread)' > ~/michael/.unread

# Depending on the output from your telnet connection, you may have to alter the `17p` figure above. This tells the script to read the seventeenth line. If the output is not as expected, count the number of lines down from the connection beginning to the `Hello $name` line and change the number `17` for this new number. Make sure you leave the `p` in place.
