
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Email-MIME-Kit-Assembler-Markdown',
  NAME      => 'Email::MIME::Kit::Assembler::Markdown',
  AUTHOR    => 'Ricardo\ Signes\ \<rjbs\@cpan\.org\>',
  ABSTRACT  => 'build\ multipart\/alternative\ messages\ from\ Markdown\ alone',
  VERSION   => '0.091520',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.21) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "Email::MIME::Kit" => '2.003',
    "Text::Markdown" => '0',
  },
);
