package EPrints::Plugin::Screen::EPMC::OrcidWorksTier1;

@ISA = ( 'EPrints::Plugin::Screen::EPMC' );

use strict;
# Make the plug-in
sub new
{
      my( $class, %params ) = @_;

      my $self = $class->SUPER::new( %params );

      $self->{actions} = [qw( enable disable )];
      $self->{disable} = 0; # always enabled, even in lib/plugins

      $self->{package_name} = 'orcidworks';

      return $self;
}

=item $screen->action_enable( [ SKIP_RELOAD ] )

Enable the L<EPrints::DataObj::EPM> for the current repository.

If SKIP_RELOAD is true will not reload the repository configuration.

=cut

sub action_enable
{
        my( $self, $skip_reload ) = @_;

        $self->SUPER::action_enable( $skip_reload );

        #$self->reload_config if !$skip_reload;
}

=item $screen->action_disable( [ SKIP_RELOAD ] )

Disable the L<EPrints::DataObj::EPM> for the current repository.

If SKIP_RELOAD is true will not reload the repository configuration.

=cut

sub action_disable
{
        my( $self, $skip_reload ) = @_;

        $self->SUPER::action_disable( $skip_reload );

        #$self->reload_config if !$skip_reload;

}

