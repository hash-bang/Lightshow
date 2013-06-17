#!/usr/bin/perl
die "Must be run within lightshow" unless defined lightshow;

my @colors = 150..175;

lighton();
while (1) {
	$_ = $colors[rand(scalar(@colors))];
	say(2, "Color: $_");
	lightcolor($_);
}
