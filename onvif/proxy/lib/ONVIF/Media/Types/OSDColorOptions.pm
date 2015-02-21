package ONVIF::Media::Types::OSDColorOptions;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Color_of :ATTR(:get<Color>);
my %Transparent_of :ATTR(:get<Transparent>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        Color
        Transparent
        Extension

    ) ],
    {
        'Color' => \%Color_of,
        'Transparent' => \%Transparent_of,
        'Extension' => \%Extension_of,
    },
    {
        'Color' => 'ONVIF::Media::Types::ColorOptions',
        'Transparent' => 'ONVIF::Media::Types::IntRange',
        'Extension' => 'ONVIF::Media::Types::OSDColorOptionsExtension',
    },
    {

        'Color' => 'Color',
        'Transparent' => 'Transparent',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Media::Types::OSDColorOptions

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
OSDColorOptions from the namespace http://www.onvif.org/ver10/schema.

Describe the option of the color and its transparency.




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Color


=item * Transparent


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::OSDColorOptions
   Color =>    { # ONVIF::Media::Types::ColorOptions
     # One of the following elements.
     # No occurance checks yet, so be sure to pass just one...
     ColorList => ,
     ColorspaceRange =>  { # ONVIF::Media::Types::ColorspaceRange
       X =>  { # ONVIF::Media::Types::FloatRange
         Min =>  $some_value, # float
         Max =>  $some_value, # float
       },
       Y =>  { # ONVIF::Media::Types::FloatRange
         Min =>  $some_value, # float
         Max =>  $some_value, # float
       },
       Z =>  { # ONVIF::Media::Types::FloatRange
         Min =>  $some_value, # float
         Max =>  $some_value, # float
       },
       Colorspace =>  $some_value, # anyURI
     },
   },
   Transparent =>  { # ONVIF::Media::Types::IntRange
     Min =>  $some_value, # int
     Max =>  $some_value, # int
   },
   Extension =>  { # ONVIF::Media::Types::OSDColorOptionsExtension
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
