#!/usr/bin/perl
die "Must be run within lightshow" unless defined lightshow;
lighton();
for (1..255) {
	say(2, "Color: $_");
	lightcolor($_);
}
1;
