#!/usr/bin/perl
die "Must be run within lightshow" unless defined lightshow;

my @colors = 150..175;

lighton();
while (1) {
	lightcolor($colors[rand(scalar(@colors))]);
	usleep(20000 + rand(100000));
}
1;
