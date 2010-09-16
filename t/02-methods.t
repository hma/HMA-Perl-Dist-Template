#!perl -T

use strict;
use warnings;

use Test::More tests => 2;

use HMA::Perl::Dist::Template;

my $obj = HMA::Perl::Dist::Template->new( 'something' );

can_ok $obj, 'method';

is $obj->method, 'something', 'method ok';
