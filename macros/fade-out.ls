#!/usr/bin/perl
die "Must be run within lightshow" unless defined lightshow;
for (1..lightsteps()) {
	lightbright('dim');
	usleep(50000);
}
lightoff();
1;
