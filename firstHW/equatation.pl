#!/usr/bin/env perl

use 5.016;
use warnings;
use List::MoreUtils 'all';

my ($a,$b,$c) = @ARGV;
if ( all { !defined } $a, $b, $c) {
	die "Bad arguments\n"
}
else {
	if (!defined $a || !defined $b || !defined $c) {
		die "Not a quadratic equation\n"
	}
}

my $D = $b*$b - 4*$a*$c;
my $x1 = (-$b + $D ** 0.5) / (2*$a);
my $x2 = (-$b - $D ** 0.5) / (2*$a);
print "$x1,$x2\n";
