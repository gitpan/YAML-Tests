package YAML::Tests;
use 5.005003;
use strict;
$YAML::Tests::VERSION = '0.01';

sub env_error_msg {
    my ($class, $base, $base_env_name) = @_;
    return <<"...";
'$base' is not a YAML-Tests directory.

You need to get YAML-Tests from CPAN or its SVN repository. If you get a 
tarball you need to untar it into a directory.

Next you should cd to that directory or set the $base_env_name
environment variable to point to the directory.

The SVN location is: http://svn.kwiki.org/ingy/YAML-Tests/

...
}

sub usage_msg {
    return <<"...";
Usage:
    yt YAML::Module

Examples:
    yt YAML
    yt YAML::LibYAML
    yt YAML::Syck
    yt YAML::Tiny
...
}

1;

=head1 NAME

YAML::Tests - Common Test Suite for Perl YAML Implementations

=head1 SYNOPSIS

    > yt YAML::Foo   # Run all YAML Tests against YAML::Foo implementation

=head1 DESCRIPTION

YAML::Tests provides a common test suite against which to test Perl YAML
modules. It also provides a Module::Install component to make it simple
for YAML module authors to include the tests in their distributions.

This module is primarily intended for YAML implementation authors (currently
ADAM, AUDREY and INGY) and also for anyone who is interested in comparing the
capabilities and quality of the various YAML modules.

This module installs a command line tool called C<yt> which can be used to run
the tests against various implementations.

=head1 AUTHOR

Ingy döt Net <ingy@cpan.org>

=head1 COPYRIGHT

Copyright (c) 2007. Ingy döt Net. All rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

See http://www.perl.com/perl/misc/Artistic.html

=cut
