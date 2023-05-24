#!C:\Strawberry\perl\bin\perl -w
package BST;

use strick;
use warning;
use Node;

sub new {
    my $class = shift;
    my $self = {
        root => undef;
    };
    bless %self, $class;
    return $self;
}

sub method {
    print "Hello world";
}

1;