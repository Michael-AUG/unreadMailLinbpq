# Unread Mail notifier for Linbpq

These two scripts will check your Linbpq BBS server for any unread mail and display the number to STDOUT.

In order for this to work, a few things need to be in place:

1) In Mail Mgmt > Prompts (within the BPQ web UI), you need to set the initial prompt to read as: `Hello $name. You have $number unread messages.` See the variables beneath the textbox to see how to do this.

2) In the `mailcount.sh` file, you need to add your telnet username and password where indicated. Do not change anything else in the file unless you know what you're doing.

3) You need to set a `crontab` rule to read thus: `*/2  * * * * $LOCATION_OF_FILE/mailcount.sh`, obviously substituting the actual location of the executable.

I use Sway on my Linux laptop, meaning I have a swaybar at the bottom of my screen. I have set this up to `cat` the `.unread` file that `mailcount.sh` produces, giving me a constantly updated unread mail figure.

You could make use of this `.unread` file to light an LED from the GPIO pins of your Raspberry Pi, for example, by using a simple IF statement - `if [ .unread > 0 ]; then...`. I may well do this in the future.

Good luck!

Michael Topple GM5AUG
