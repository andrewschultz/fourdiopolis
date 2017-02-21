###############################################
#talf.pl
#
#tests that tables are in alphabetical order
#
#doesn't do everything--table of nearlies for instance is alphabetical by sub-table and should be
#
#no arguments
#

use warnings;
use strict;

#stuff not worth it to put in alphabetical order
my @ignore = ("silly randoms", "silly jokes", "far blab", "final question options", "scenery progress", "observies", "stupid jokes");

talf("threediopolis");
talf("fourdiopolis");

sub talf
{
  my $skipTable = 0;
  my $newTable;
  my $gotQuote = 0;
  my $lastQuote;

  print "Trying $_[0].\n";
  open(A, "c:/games/inform/$_[0].inform/source/story.ni");

  OUTER:
  while ($a = <A>)
  {
    chomp($a); $a =~ s/\"\t.*//g;
    if ($a =~ /^table/)
    {
      $skipTable = 0;
      $lastQuote = ""; $gotQuote = 0;
      for (@ignore) { if ($a =~ /^table of $_/i) { $skipTable = 1; next OUTER; } }
      $newTable = $a;
    }
    if (($a !~ /[a-z]/i) && ($gotQuote)) { print "End of $newTable.\n"; $gotQuote = 0; $skipTable = 0; }
    if ($skipTable) { next; }
    if ($a =~ /^\"/) { if ($a le $lastQuote) { print "$a behind $lastQuote in $newTable.\n"; } $lastQuote = $a; $gotQuote = 1; }
  }
  close(A);
}