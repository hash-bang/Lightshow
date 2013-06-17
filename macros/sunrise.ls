#!/usr/bin/perl
die "Must be run within lightshow" unless defined lightshow;
lighton();
lightcolor(147);
lightbright('dimmest');
for (1..9) {
	lightbright('up');
}
1;
