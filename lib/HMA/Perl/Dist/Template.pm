package HMA::Perl::Dist::Template;

use 5.006;

use strict;
use warnings;

our $VERSION = '0.00_01';



#
#  constructor
#

sub new {
  my $class = shift;
  unshift @_, 'single_param' if @_ % 2;
  my %param = @_;
  bless \%param, $class;
}



#
#  public methods
#

sub method {
  my $self = shift;
  return $self->{single_param};
}



$VERSION = eval $VERSION;

__END__

=head1 NAME

HMA::Perl::Dist::Template - HMA's template for Perl modules/distributions

=head1 SYNOPSIS

  use HMA::Perl::Dist::Template;

  my $obj = HMA::Perl::Dist::Template->new( 'something' );

  printf "single_param: %s\n", $obj->method;  # something

=head1 DESCRIPTION

This is HMA's personal template for creating object-oriented Perl
modules/distributions the way he likes.

=head1 CONSTRUCTOR

=over 4

=item $obj = HMA::Perl::Dist::Template->new(%options);

Creates a new C<HMA::Perl::Dist::Template> object and returns it.

=item $obj = HMA::Perl::Dist::Template->new($single_param);

=item $obj = HMA::Perl::Dist::Template->new($single_param, %options);

=back

=head1 METHODS

=over 4

=item $single_param = $obj->method;

=back

=head1 TODO

=over 4

=item * Documentation

=item * C<%options>

=back

=head1 AUTHOR

Henning Manske <hma@cpan.org>

=head1 COPYRIGHT AND LICENSE

Copyright (c) 2011 Henning Manske. All rights reserved.

This module is free software. You can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See L<http://dev.perl.org/licenses/>.

This module is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

=cut
