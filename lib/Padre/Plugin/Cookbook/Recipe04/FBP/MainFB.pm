package Padre::Plugin::Cookbook::Recipe04::FBP::MainFB;

## no critic

# This module was generated by Padre::Plugin::FormBuilder::Perl.
# To change this module edit the original .fbp file and regenerate.
# DO NOT MODIFY THIS FILE BY HAND!

use 5.008;
use strict;
use warnings;
use Padre::Wx ();
use Padre::Wx::Role::Main ();

our $VERSION = '0.01';
our @ISA     = qw{
	Padre::Wx::Role::Main
	Wx::Dialog
};

sub new {
	my $class  = shift;
	my $parent = shift;

	my $self = $class->SUPER::new(
		$parent,
		-1,
		Wx::gettext("Main"),
		Wx::DefaultPosition,
		Wx::DefaultSize,
		Wx::DEFAULT_DIALOG_STYLE | Wx::RESIZE_BORDER,
	);

	$self->{package_name} = Wx::StaticText->new(
		$self,
		-1,
		Wx::gettext("ConfigDB"),
	);
	$self->{package_name}->SetFont(
		Wx::Font->new( 14, 70, 90, 92, 0, "" )
	);

	$self->{relation_title} = Wx::StaticText->new(
		$self,
		-1,
		Wx::gettext("Relation Name"),
	);
	$self->{relation_title}->SetFont(
		Wx::Font->new( 14, 70, 90, 90, 0, "" )
	);

	$self->{display_cardinality} = Wx::StaticText->new(
		$self,
		-1,
		Wx::gettext("Cardinality"),
	);

	$self->{about} = Wx::Button->new(
		$self,
		-1,
		Wx::gettext("About"),
		Wx::DefaultPosition,
		Wx::DefaultSize,
	);

	Wx::Event::EVT_BUTTON(
		$self,
		$self->{about},
		sub {
			shift->about_clicked(@_);
		},
	);

	$self->{m_staticline1_1} = Wx::StaticLine->new(
		$self,
		-1,
		Wx::DefaultPosition,
		Wx::DefaultSize,
		Wx::LI_HORIZONTAL,
	);

	$self->{list_ctrl} = Wx::ListCtrl->new(
		$self,
		-1,
		Wx::DefaultPosition,
		Wx::DefaultSize,
		Wx::LC_EDIT_LABELS | Wx::LC_REPORT,
	);
	$self->{list_ctrl}->SetMinSize( [ 560, 188 ] );

	Wx::Event::EVT_LIST_COL_CLICK(
		$self,
		$self->{list_ctrl},
		sub {
			shift->_on_list_col_clicked(@_);
		},
	);

	Wx::Event::EVT_LIST_ITEM_ACTIVATED(
		$self,
		$self->{list_ctrl},
		sub {
			shift->_on_list_item_activated(@_);
		},
	);

	my $m_staticline1_2 = Wx::StaticLine->new(
		$self,
		-1,
		Wx::DefaultPosition,
		Wx::DefaultSize,
		Wx::LI_HORIZONTAL,
	);

	$self->{m_staticText5} = Wx::StaticText->new(
		$self,
		-1,
		Wx::gettext("config.db"),
	);
	$self->{m_staticText5}->SetFont(
		Wx::Font->new( Wx::NORMAL_FONT->GetPointSize, 70, 90, 92, 0, "" )
	);

	$self->{relations} = Wx::RadioBox->new(
		$self,
		-1,
		Wx::gettext("Relations"),
		Wx::DefaultPosition,
		Wx::DefaultSize,
		[
			"Plugin",
			"Session",
			"SessionFile",
			"Bookmark",
			"History",
			"HostConfig",
			"Snippets",
			"RecentlyUsed",
			"LastPositionInFile",
			"DebugBreakpoints",
		],
		2,
		Wx::RA_SPECIFY_ROWS,
	);
	$self->{relations}->SetSelection(0);

	$self->{m_staticline1_3} = Wx::StaticLine->new(
		$self,
		-1,
		Wx::DefaultPosition,
		Wx::DefaultSize,
		Wx::LI_HORIZONTAL,
	);

	$self->{update} = Wx::Button->new(
		$self,
		-1,
		Wx::gettext("Update"),
		Wx::DefaultPosition,
		Wx::DefaultSize,
	);

	Wx::Event::EVT_BUTTON(
		$self,
		$self->{update},
		sub {
			shift->update_clicked(@_);
		},
	);

	$self->{show} = Wx::Button->new(
		$self,
		-1,
		Wx::gettext("Show"),
		Wx::DefaultPosition,
		Wx::DefaultSize,
	);
	$self->{show}->Disable;

	Wx::Event::EVT_BUTTON(
		$self,
		$self->{show},
		sub {
			shift->show_clicked(@_);
		},
	);

	$self->{clean} = Wx::Button->new(
		$self,
		-1,
		Wx::gettext("Clean"),
		Wx::DefaultPosition,
		Wx::DefaultSize,
	);
	$self->{clean}->Disable;

	Wx::Event::EVT_BUTTON(
		$self,
		$self->{clean},
		sub {
			shift->clean_clicked(@_);
		},
	);

	$self->{width_adjust} = Wx::Button->new(
		$self,
		-1,
		Wx::gettext("Adjust Width"),
		Wx::DefaultPosition,
		Wx::DefaultSize,
	);
	$self->{width_adjust}->Disable;

	Wx::Event::EVT_BUTTON(
		$self,
		$self->{width_adjust},
		sub {
			shift->width_adjust_clicked(@_);
		},
	);

	my $close_button = Wx::Button->new(
		$self,
		Wx::ID_CANCEL,
		Wx::gettext("Close"),
		Wx::DefaultPosition,
		Wx::DefaultSize,
	);
	$close_button->SetDefault;

	my $bSizer6 = Wx::BoxSizer->new(Wx::VERTICAL);
	$bSizer6->Add( $self->{relation_title}, 0, Wx::ALL, 5 );
	$bSizer6->Add( $self->{display_cardinality}, 0, Wx::ALL, 5 );

	my $bSizer1 = Wx::BoxSizer->new(Wx::HORIZONTAL);
	$bSizer1->Add( $self->{package_name}, 0, Wx::ALL, 5 );
	$bSizer1->Add( 0, 0, 1, Wx::EXPAND, 5 );
	$bSizer1->Add( $bSizer6, 1, Wx::EXPAND, 5 );
	$bSizer1->Add( 0, 0, 1, Wx::EXPAND, 5 );
	$bSizer1->Add( $self->{about}, 0, Wx::ALL, 5 );

	my $bSizer5 = Wx::BoxSizer->new(Wx::HORIZONTAL);
	$bSizer5->Add( $self->{list_ctrl}, 1, Wx::ALL | Wx::EXPAND, 3 );

	my $fgSizer2 = Wx::FlexGridSizer->new( 0, 2, 0, 0 );
	$fgSizer2->SetFlexibleDirection(Wx::BOTH);
	$fgSizer2->SetNonFlexibleGrowMode(Wx::FLEX_GROWMODE_SPECIFIED);
	$fgSizer2->Add( $self->{m_staticText5}, 0, Wx::ALL, 5 );
	$fgSizer2->Add( $self->{relations}, 0, Wx::ALL, 5 );

	my $buttons = Wx::BoxSizer->new(Wx::HORIZONTAL);
	$buttons->Add( $self->{update}, 0, Wx::ALL, 5 );
	$buttons->Add( 0, 0, 1, Wx::EXPAND, 5 );
	$buttons->Add( $self->{show}, 0, Wx::ALL, 5 );
	$buttons->Add( 0, 0, 1, Wx::EXPAND, 5 );
	$buttons->Add( $self->{clean}, 0, Wx::ALL, 5 );
	$buttons->Add( 0, 0, 1, Wx::EXPAND, 5 );
	$buttons->Add( $self->{width_adjust}, 0, Wx::ALL, 5 );
	$buttons->Add( 0, 0, 1, Wx::EXPAND, 5 );
	$buttons->Add( $close_button, 0, Wx::ALL, 5 );

	my $vsizer = Wx::BoxSizer->new(Wx::VERTICAL);
	$vsizer->Add( $bSizer1, 0, Wx::EXPAND, 3 );
	$vsizer->Add( $self->{m_staticline1_1}, 0, Wx::EXPAND | Wx::ALL, 1 );
	$vsizer->Add( $bSizer5, 1, Wx::ALL | Wx::EXPAND, 1 );
	$vsizer->Add( $m_staticline1_2, 0, Wx::ALL | Wx::EXPAND, 1 );
	$vsizer->Add( $fgSizer2, 0, Wx::ALL | Wx::EXPAND, 3 );
	$vsizer->Add( $self->{m_staticline1_3}, 0, Wx::EXPAND | Wx::ALL, 1 );
	$vsizer->Add( $buttons, 0, Wx::EXPAND, 3 );

	my $sizer = Wx::BoxSizer->new(Wx::HORIZONTAL);
	$sizer->Add( $vsizer, 1, Wx::ALL, 1 );

	$self->SetSizerAndFit($sizer);
	$self->Layout;

	return $self;
}

sub package_name {
	$_[0]->{package_name};
}

sub relation_title {
	$_[0]->{relation_title};
}

sub display_cardinality {
	$_[0]->{display_cardinality};
}

sub list_ctrl {
	$_[0]->{list_ctrl};
}

sub relations {
	$_[0]->{relations};
}

sub show {
	$_[0]->{show};
}

sub clean {
	$_[0]->{clean};
}

sub width_adjust {
	$_[0]->{width_adjust};
}

sub about_clicked {
	$_[0]->main->error('Handler method about_clicked for event about.OnButtonClick not implemented');
}

sub _on_list_col_clicked {
	$_[0]->main->error('Handler method _on_list_col_clicked for event list_ctrl.OnListColClick not implemented');
}

sub _on_list_item_activated {
	$_[0]->main->error('Handler method _on_list_item_activated for event list_ctrl.OnListItemActivated not implemented');
}

sub update_clicked {
	$_[0]->main->error('Handler method update_clicked for event update.OnButtonClick not implemented');
}

sub show_clicked {
	$_[0]->main->error('Handler method show_clicked for event show.OnButtonClick not implemented');
}

sub clean_clicked {
	$_[0]->main->error('Handler method clean_clicked for event clean.OnButtonClick not implemented');
}

sub width_adjust_clicked {
	$_[0]->main->error('Handler method width_adjust_clicked for event width_adjust.OnButtonClick not implemented');
}

1;

# Copyright 2008-2011 The Padre development team as listed in Padre.pm.
# LICENSE
# This program is free software; you can redistribute it and/or
# modify it under the same terms as Perl 5 itself.

