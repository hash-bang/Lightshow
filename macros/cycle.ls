#!/usr/bin/perl
die "Must be run within lightshow" unless defined lightshow;
lighton();
while (1) {
	for (1..255) {
		say(2, "Color: $_");
		lightcolor($_);
		usleep(500000);
	}
}
1;
