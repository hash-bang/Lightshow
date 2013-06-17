#!/usr/bin/perl
die "Must be run within lightshow" unless defined lightshow;
lighton();
while (1) {
	lightcolor(rand(255));
}
