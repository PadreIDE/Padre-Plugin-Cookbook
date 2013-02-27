package Padre::Plugin::Cookbook::Recipe03::FBP::MainFB;

# This module was generated by Padre::Plugin::FormBuilder::PerlX.
# To change this module, edit the original .fbp file and regenerate.
# DO NOT MODIFY BY HAND!

use v5.10.1;
use strict;
use warnings;
# use diagnostics;
# use utf8;
# use autodie;
use Padre::Wx             ();
use Padre::Wx::Role::Main ();

our $VERSION = '0.23';
use parent -norequire, qw(
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
	$self->SetSizeHints( [ 240, -1 ], Wx::wxDefaultSize );

	my $package_name = Wx::StaticText->new(
		$self,
		-1,
		"Main_Public_Label",
	);
	$package_name->SetFont( Wx::Font->new( 12, 70, 90, 92, 0, "" ) );

	my $about = Wx::Button->new(
		$self,
		-1,
		"About",
	);
	$about->SetDefault;
	$about->SetFont( Wx::Font->new( Wx::wxNORMAL_FONT->GetPointSize, 70, 93, 92, 0, "" ) );
	$about->SetToolTip("About Dialog with Controler");

	Wx::Event::EVT_BUTTON(
		$self, $about,
		sub {
			shift->about_clicked(@_);
		},
	);

	my $m_staticline1 = Wx::StaticLine->new(
		$self,
		-1,
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		Wx::wxLI_HORIZONTAL,
	);

	my $m_staticText1 = Wx::StaticText->new(
		$self,
		-1,
		"Hello World",
	);

	my $bSizer2 = Wx::BoxSizer->new(Wx::wxHORIZONTAL);
	$bSizer2->Add( $package_name, 0, Wx::wxALL, 5 );
	$bSizer2->Add( $about,        0, Wx::wxALL, 5 );

	my $bSizer3 = Wx::BoxSizer->new(Wx::wxVERTICAL);
	$bSizer3->Add( $m_staticText1, 0, Wx::wxALIGN_CENTER | Wx::wxALL, 5 );

	my $bSizer1 = Wx::BoxSizer->new(Wx::wxVERTICAL);
	$bSizer1->Add( $bSizer2,       1, Wx::wxEXPAND,             5 );
	$bSizer1->Add( $m_staticline1, 0, Wx::wxEXPAND | Wx::wxALL, 5 );
	$bSizer1->Add( $bSizer3,       1, Wx::wxEXPAND,             5 );

	$self->SetSizer($bSizer1);
	$self->Layout;
	$bSizer1->Fit($self);
	$bSizer1->SetSizeHints($self);

	$self->{package_name} = $package_name->GetId;

	return $self;
}

=pod
 
=over 4
 
=item package_name ()
 
Public Accessor package_name Auto-generated.
 
=back
 
=cut

sub package_name {
	my $self = shift;
	return Wx::Window::FindWindowById( $self->{package_name} );
}

=pod
 
=over 4
 
=item about_clicked ()
 
Event Handler for about.OnButtonClick (Required). Auto-generated.
You must implement this Method in your calling class.
 
=back
 
=cut

sub about_clicked {
	my $self = shift;
	return $self->main->error('Handler method about_clicked for event about.OnButtonClick not implemented');
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

Copyright (c) 2008-2013 The Padre development team as listed in Padre.pm.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

=cut


