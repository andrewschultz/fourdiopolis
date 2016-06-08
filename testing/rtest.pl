#rtest.pl
#makes a random file for running tests on
#reads in rtest.txt

use List::Util 'shuffle';

$outFile = "c:\\games\\inform\\prt\\$digit" . "drandtest.txt";

$inFile = "rtest.txt";

if (! -f $inFile)
{
  if (-f "rtest4.txt") { $inFile = "rtest4.txt"; }
  elsif (-f "rtest3.txt") { $inFile = "rtest3.txt"; }
}

while ($count <= $#ARGV)
{
  $a = @ARGV[$count];
  $b = @ARGV[$count+1];
  
  for ($a)
  {
    /^-3$/ && do { $inFile = "rtest3.txt"; $count++; next; };
    /^-4$/ && do { $inFile = "rtest4.txt"; $count++; next; };
	/^[0-9]/ && do { $iterations = $a; $count++; next; };
	/^-?i/ && do { $iterations = $b; $count+=2; next; };
	usage();
  }
}

open(A, "$inFile") || die ("Can't open $inFile.\n");

while ($a = <A>)
{
  if ($a =~ /^prefix:/i) { chomp($a); $prefix = $a; $prefix =~ s/^prefix://gi; last; }
}

if (!$prefix) { print "$inFile must have prefix:"; exit; }

if ($iterations)
{
  for $count (1..$iterations) { writeTestFile($count); }
} else { writeTestFile(""); }

sub writeTestFile
{

open(A, "$inFile");

if (!$_[0]) { $outFile = "reg-$prefix-rand.txt"; } else { $outFile = "reg-$prefix-$_[0]-rand.txt"; }

open (B, ">$outFile");

print B "## file name: $outFile\n";

$cmd = "p";

while ($a = <A>)
{
    chomp($a);
  if ($a =~ /^prefix/i) { next; }
  if ($a =~ /^(\*\*|##)/) { print B "$a\n"; next; }
  if ($a =~ /^cmd:/i) { $a =~ s/^cmd://gi; $cmd = $a; next; }
  if ($a eq "\\") { print B "\n"; next; }

  if ($a =~ /^3-r/)
  {
    print B "* search-test-regular\n\n";
    $harvestRandoms = 1; @sortArray = (); next;
  }
  if ($a =~ /^3-s/)
  {
    print B "* search-test-scenery\n\n> see new seens\n\n";
    $harvestRandoms = 1; @sortArray = (); next;
  }
  #fourdiopolis, force a certain scenario
  if ($a =~ /^fo /)
  {
    $x = $a; $x =~ s/^fo //g; chomp($x);
    print B "* search-test-$x\n\n>fo $x\n\n";
    if ($a =~ /^fo sc/) { $scenery = 1; }
    $harvestRandoms = 1; @sortArray = (); next;
  }
  if ($harvestRandoms)
  {
    if ($a !~ /[a-z]/)
    {
	  #print "Sorting " . ($#sortArray + 1) . " elements.\n";
      @sa = shuffle(@sortArray); $harvestRandoms = 0;
      if (($trackScenery) && ($scenery))
      {
        for (@sa) { $curScen++; $_ .= "\nWRONG $curScen"; }
        $trackScenery = 0;
      }
      $scenery = 0;
      print B join("\n\n", @sa); print B "\n\n"; next;
    }
    $a =~ s/\|/\n> $cmd\n/g;
	$a =~ s/\\/\n/g;
    push(@sortArray, "> $a");
  }
}

close(A);
close(B);

print "Created $outFile\n";

}