#!/usr/bin/perl

# Get default Go implementation.

use warnings;
use strict;

use Debian::Debhelper::Dh_Lib;

if (hostarch() eq "ppc64") {
	printf("gccgo-go\n");
	exit 0;
}

my %known_packages = map { $_ => 1 } getpackages('arch');
if (exists($known_packages{'golang-go'})) {
	printf("golang-go\n");
} else {
	printf("gccgo-go\n");
}
