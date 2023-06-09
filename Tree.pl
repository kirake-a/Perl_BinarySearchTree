#!perl
use strict;
use strict "vars";
use strict "refs";
use strict "subs"; 
use strict;
no strict "vars";

# ----------------------------------------------------------------------

package Person;
use strict;
use warnings;

sub new {
  my ($class, $name, $last_name, $email) = @_;
  my $self = {
    name => $name,
    last_name => $last_name,
    email => $email,
  };
  print "New person\n";
  bless $self, $class;
  return $self;
}

sub get_name {
  my ($self) = @_;
  return $self->{name};
}

sub set_name {
  my ($self, $name_) = @_;
  $self->{name} = $name_;
}

sub get_last_name {
  my ($self) = @_;
  return $self->{last_name};
}

sub set_last_name {
  my ($self, $last_name_) = @_;
  $self->{last_name} = $last_name_;
}

sub get_email {
  my ($self) = @_;
  return $self->{email};
}

sub set_email {
  my ($self, $email_) = @_;
  $self->{email} = $email_;
}

1;

# ----------------------------------------------------------------------

package Node;
use strict;
use warnings;

# Class constructor
sub new {
  my ($class, $person) = @_;
  my $self = {
    person => $person,
    left => undef,
    right => undef,
  };
  print "Hello World into package Node\n";
  bless $self, $class;
  return $self;
}

# Getters
sub get_person {
  my ($self) = @_;
  return $self->{person};
}

sub get_left {
  my ($self) = @_;
  return $self->{left};
}

sub get_right {
  my ($self) = @_;
  return $self->{right};
}

# Setters
sub set_person {
  my ($self, $person) = @_;
  $self->{name} = $person;
}

sub set_left {
  my ($self, $izquierdo) = @_;
  $self->{left} = $izquierdo;
}

sub set_right {
  my ($self, $derecho) = @_;
  $self->{right} = $derecho;
}

sub print_name {
  # print "My name is: $self->{name}";
}

1;

# ----------------------------------------------------------------------

package BST;
use strict;
use warnings;

# Class constructor
sub new {
  my $class = shift;
  my $self = {
    root => undef,
  };
  bless $self, $class;
  return $self;
}

sub is_empty {
  my ($self) = @_;
  return !defined $self->{root};
}

sub compare {
  my ($current_string, $compared_string) = @_;

  if($current_string lt $compared_string) {
    return -1;
  } elsif ($current_string gt $compared_string) {
    return 1;
  } esle {
    return 0;
  }
}

my $current_1 = "Hallo";
my $compared_1= "Hello";
my $resultado = compare($current_1, $compared_1);
print "Resultado: $resultado\n";

sub insert {
  my ($self, $person) = @_;
  my $new_node = Node->new($person);

  if($self->is_empty()) {
    $self->{root} = $new_node;
    return;
  }

  my $current = $self->{root};

  while(1){
    if (compare($current, $person) < 0) {
      if () {

      } else {

      }

    } else {
      if () {

      } else {
        
      }
    }
  }
}

sub method {
  print "Hello World into BST\n";
}

sub get_root {
  my ($self) = @_;
  return $self->{root};
}

sub set_root {
  my ($self, $root_) = @_;
  $self->{root} = $root_;
}

1;

# ----------------------------------------------------------------------

print "Hello world out package\n";
my $person = Person->new( "Ruben", "Alvarado", "ruben_hotmail.com" );
my $node = Node->new($person);
my $tree = BST->new();
$tree->method();
#$node->print_name();

if ($tree->is_empty()) {
  print "El árbol está vacío.\n";
} else {
  print "El árbol no está vacío.\n";
}

$tree->insert($person);

if ($tree->is_empty()) {
  print "El árbol está vacío.\n";
} else {
  print "El árbol no está vacío.\n";
}
