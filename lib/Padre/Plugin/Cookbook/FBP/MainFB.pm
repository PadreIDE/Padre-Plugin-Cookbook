package Padre::Plugin::Cookbook::FBP::MainFB;

# This module was generated by Padre::Plugin::FormBuilder::PerlX.
# To change this module, edit the original .fbp file and regenerate.
# DO NOT MODIFY BY HAND!

use 5.010;
use strict;
use warnings;
use diagnostics;
use utf8;
use autodie;
use Padre::Wx             ();
use Padre::Wx::Role::Main ();

use version; our $VERSION = qv(0.13);
use parent-norequire, qw(
	Padre::Wx::Role::Main
	Wx::Dialog
);

sub new {
	my $class  = shift;
	my $parent = shift;

	my $self = $class->SUPER::new(
		$parent,
		-1,
		"Main",
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		Wx::wxDEFAULT_DIALOG_STYLE | Wx::wxRESIZE_BORDER,
	);
	$self->SetSizeHints( Wx::wxDefaultSize, Wx::wxDefaultSize );

	my $m_staticText1 = Wx::StaticText->new(
		$self,
		-1,
		"Hello World",
	);

	my $bSizer1 = Wx::BoxSizer->new(Wx::wxVERTICAL);
	$bSizer1->Add( $m_staticText1, 0, Wx::wxALIGN_CENTER | Wx::wxALL, 5 );

	$self->SetSizer($bSizer1);
	$self->Layout;
	$bSizer1->Fit($self);
	$bSizer1->SetSizeHints($self);

	return $self;
}

1;

=pod

=over 4

=item new ()

Constructor. Auto-generated by Padre::Plugin::FormBuilder.

=back

=head1 AUTHOR

Adam Kennedy E<lt>adamk@cpan.orgE<gt>

=head1 SEE ALSO

L<Padre>

=head1 LICENSE AND COPYRIGHT

Copyright (c) 2008-2011 The Padre development team as listed in Padre.pm.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

=cut


