#!/usr/bin/perl
die "Must be run within lightshow" unless defined lightshow;

my @colors = 11..40;

lighton();
while (1) {
	$_ = $colors[rand(scalar(@colors))];
	say(2, "Color: $_");
	lightcolor($_);
	lightsleep();
}
