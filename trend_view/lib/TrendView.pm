package TrendView;

use Mojo::Base 'Mojolicious';
use Mojolicious::Plugin::CSRFDefender;

# This method will run once at server start
sub startup {
  my $self = shift;

  # Load configuration from hash returned by "my_app.conf"
  my $config = $self->plugin('Config' => +{file => 'etc/trend_view.conf'});

  # For CSRF
  $self->plugin('Mojolicious::Plugin::CSRFDefender');

  # Router
  my $r = $self->routes;

  # Normal route to controller
  $r->get('/')->to('example#welcome');
}

1;
