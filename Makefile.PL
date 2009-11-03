
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Email-MIME-Kit-Assembler-Markdown',
  NAME      => 'Email::MIME::Kit::Assembler::Markdown',
  AUTHOR    => "Ricardo\ Signes\ \<rjbs\@cpan\.org\>",
  ABSTRACT  => "build\ multipart\/alternative\ messages\ from\ Markdown\ alone",
  VERSION   => '0.093070',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "Email::MIME::Kit" => '2.093070',
    "Text::Markdown" => '0',
  },
  test => {TESTS => 't/*.t'}
);

