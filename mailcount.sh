#!/bin/sh
#A program to extract an unread mail counter from linBPQ and write it to .unread file.
uname='michael\r'
pword='xxxxxxxx\r'
command='bbs\r'
{
sleep 5
echo "$uname"
sleep 3
echo "$pword"
sleep 3
echo "$command"
sleep 3
} | telnet localhost 8010 | sed -n '17p' | grep -oP '(?<=have ).*?(?= unread)' > ~/michael/.unread
