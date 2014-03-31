use warnings;
use strict;
use Module::Build;

my $requires = {
  perl => '5.10.1',
  Catmandu => '>=0.8013',  
  'Moo' => '>=1.004002',
  'XML::LibXML' => '2.0113',
  'XML::LibXSLT' => '1.89'
};
my $recommends = {};

my $build = Module::Build->new(
  module_name => 'Catmandu-Fix-XML',
  dist_version_from => 'lib/Catmandu/Fix/XML.pm',  
  dist_author => [qw(
    nicolas.franck@ugent.be
  )],
  dist_abstract => 'Catmandu fix modules for processing xml',
  requires => $requires,
  recommends => $recommends,
  license => 'perl',
  create_license => 1,
  create_makefile_pl => 'traditional'
);
$build->create_build_script();
