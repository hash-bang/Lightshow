#!/usr/bin/perl
die "Must be run within lightshow" unless defined lightshow;
lighton();
lightcolor('white');
for (1..lightsteps()) {
	lightbright('up');
	usleep(50000);
}
1;
