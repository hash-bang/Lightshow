#!/usr/bin/perl
die "Must be run within lightshow" unless defined lightshow;
lighton();
for (1..255) {
	print "Color: $_\n";
	lightcolor($_);
	lightsleep();
}
