
package Person;
use Moose

sub new {
    my ($class, %value) = @_;
    my $self = {
        first_name => shift,
        last_name => shift,
        ssn => shift,
    };
    bless $self, $class;
    return $self;
}

sub getFirstName {
    return $self -> {first_name};
}

sub setFirstName {
    my ( $self, $first_name ) = @_;
    $self->{first_name} = $first_name if defined($first_name);
    return $self->{first_name}; 
}

has 'name' => (is => 'rw');

1;