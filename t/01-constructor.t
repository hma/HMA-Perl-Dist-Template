#!perl -T

use strict;
use warnings;

use Test::More 0.62 tests => 1;

use HMA::Perl::Dist::Template;

my $obj = eval { HMA::Perl::Dist::Template->new };

isa_ok $obj, 'HMA::Perl::Dist::Template'
  or BAIL_OUT q{Can't create a HMA::Perl::Dist::Template object};
