#!/usr/bin/env perl

use 5.016;
use warnings;

if (@ARGV == 2) {
	my ($str, $substr) = @ARGV;
	my $pos = index($str, $substr);
	if ($pos != -1) {
		my $endOfStr = substr($str, $pos);
		print "$pos\n";
		print "$endOfStr\n";
	}
	else {
		warn "Not found\n";
		exit;
	}
} 
else {
	die "Not enough arguments\n";
}
