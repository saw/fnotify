# Get notified about irc hilights with irssi

## Installation

Put this script inside .irssi/scripts

Inside your startup file (`.irssi/startup`):

	load perl
	script load fnotify
	hilight alert
	
Restart irssi and you're done!


Based on fnotify by Thorsten Leemhuis
http://www.leemhuis.info/files/fnotify/