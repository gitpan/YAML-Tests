package t::TestYAML;
use Test::Base -Base;
use YAML::Tiny;
BEGIN {
    my $config_file = 't/yaml_tests.yaml';
    if (-f $config_file) {
        my ($config) = YAML::Tiny::LoadFile($config_file);
        if ($config->{use_blib}) {
            eval "use blib; 1" or die $@;
        }
    }
}

no_diff;
delimiters ('===', '+++');
