#!/usr/bin/perl
die "Must be run within lightshow" unless defined lightshow;
lightcolor('white');
while (1) {
	lighton();
	usleep(200000);
	lightoff();
	usleep(100000);
}
1;
