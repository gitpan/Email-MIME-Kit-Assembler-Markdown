
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "build multipart/alternative messages from Markdown alone",
  "AUTHOR" => "Ricardo Signes <rjbs\@cpan.org>",
  "BUILD_REQUIRES" => {
    "Email::MIME::Kit" => 0,
    "Test::More" => "0.96",
    "strict" => 0,
    "warnings" => 0
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Email-MIME-Kit-Assembler-Markdown",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Email::MIME::Kit::Assembler::Markdown",
  "PREREQ_PM" => {
    "Email::MIME" => "1.900",
    "Email::MIME::Kit" => "2.093070",
    "Email::MIME::Kit::Role::Assembler" => 0,
    "Moose" => 0,
    "Moose::Util::TypeConstraints" => 0,
    "Text::Markdown" => 0
  },
  "VERSION" => "0.093071",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



