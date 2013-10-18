# todo: grap topic changes

use strict;
use vars qw($VERSION %IRSSI);

use Irssi;
$VERSION = '0.0.3';
%IRSSI = (
	name        => 'fnotify'
);

#--------------------------------------------------------------------
# Based on fnotify by Thorsten Leemhuis
# http://www.leemhuis.info/files/fnotify/',
#
#--------------------------------------------------------------------



#--------------------------------------------------------------------
# Growl
#--------------------------------------------------------------------

sub hilight {
	
    my ($dest, $text, $stripped, $witem) = @_;

		
    if ($dest->{level} & MSGLEVEL_HILIGHT) {
			my $channel = $dest->{target} . "";
			my $out = `/usr/local/bin/growlnotify -t "$channel" -m "$stripped"`;
    }
}

#--------------------------------------------------------------------
# Irssi::signal_add_last / Irssi::command_bind
#--------------------------------------------------------------------
Irssi::signal_add_last("print text", "hilight");

#- end
