#!/usr/bin/perl
die "Must be run within lightshow" unless defined lightshow;
lightcolor('white');
while (1) {
	lighton();
	lightoff();
}
1;
