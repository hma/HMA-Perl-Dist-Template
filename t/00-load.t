#!perl -T

use strict;
use warnings;

use Test::More tests => 1;

BEGIN {
  use_ok 'HMA::Perl::Dist::Template'
    or BAIL_OUT q{Can't load module};
}
