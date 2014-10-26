use Test::More tests => 6;

use_ok( 'Bot::Cobalt::Plugin::Calc::Parser' );
my $calc = Bot::Cobalt::Plugin::Calc::Parser->new;
isa_ok( $calc, 'Bot::Cobalt::Plugin::Calc::Parser' );

ok( $calc->from_string("2+2") == 4, 'Addition' );
ok( $calc->from_string("4-2") == 2, 'Subtraction' );
ok( $calc->from_string("4*4") == 16, 'Multiplication' );
ok( $calc->from_string("12/3") == 4, 'Division' );
