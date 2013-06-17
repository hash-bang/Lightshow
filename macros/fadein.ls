#!/usr/bin/perl
die "Must be run within lightshow" unless defined lightshow;
lighton();
lightcolor('white');
lightbright('brightest');
1;
