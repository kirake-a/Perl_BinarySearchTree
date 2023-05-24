#!C:\Strawberry\perl\bin\perl -w
package Node;

use strick;
use warning;

# Creates a new node object and sets its value
sub new {
    my ($class, $data) = @_;
    my $self = {
        value => @_,
        left => undef,
        right => undef,
    };
    bless $self, $class;
    return $self;
}

sub method {
    print "Hello World";
}

# Returns the value of the node object
sub getData {
    my $self = shift;
    return $self -> {value}
}

# Sets the value of the node object
sub setData {
    my ($self, $value) = @_;
    $self -> {value} = $value;
}

# Returns the left child of the node object
sub getLeft {
    my $self = shift;
    return $self -> {left}
}

# Sets the left child of the node object
sub setLeft {
    my ($self, $node) = @_;
    $self -> {left} = $node;
}

# Returns the right child of the node object
sub getRight {
    my $self = shift;
    return $self -> {right}
}

# Sets the right child of the node object
sub setValue {
    my ($self, $node) = @_;
    $self -> {right} = $node
}

1;