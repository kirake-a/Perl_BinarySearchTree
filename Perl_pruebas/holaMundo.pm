
package holaMundo;
use strict;
use warnings;

my $name = "Ruben";
my $lastName = "Alvarado";
my $pet = "Ragnar";
my @animals = ("camel", "llama", "owl");

# This is my first hellow world in Perl
print "My first Hello world\n";
print "My name is: $name $lastName\n";
print "My pet's name is: $pet\n";

print "\nANIMALS:\n";
print $animals[0], "\n";
print $animals[1];

print"\n";
for(my $i=0; $i < 10; $i++){
    print "Hola\n";
    print $name, "\n";
}
