#!/usr/bin/env perl

# use lib '/usr/local/bin';
use lib '.';
use strict;
use warnings;
use Test::More tests => 3;

require_ok('myscript.pl');

is(add(3, 7), 10, '3 + 7 = 10!');
is(add(2, 3), 5, '2 + 3 = 5');
# is(add(10, 5), 15, '10 + 5 = 15');
