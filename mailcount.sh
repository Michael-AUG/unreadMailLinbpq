#!/bin/sh
uname='fred\r' #here set your BBS username, keeping the \r in place
pword='password\r' #here set your BBS password, keeping the \r in place
command='bbs\r'
{
sleep 5
echo "$uname"
sleep 3
echo "$pword"
sleep 3
echo "$command"
sleep 3
} | telnet localhost 8010
