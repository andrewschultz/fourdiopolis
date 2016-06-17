#rtest.pl
#makes a random file for running tests on
#reads in rtest.txt

use POSIX;
use List::Util 'shuffle';

use strict;
use warnings;

my $prefix;
my $outFile;
my $inFile = "rtest.txt";
my $inFileSpecified = 0;
my $copyOver = 1;
my $iterations = 0;
my $harvestRandoms = 0;
my $trackScenery = 0;
my $showZeros = 1;
my $eraseRand = 0;
my $eraseRandOut = 0;
my $eraseAfter = 0;
my $onlyFinal = 0;
my $allowRand = 0;

my $count = 0;

while ($count <= $#ARGV)
{
  $a = $ARGV[$count];
  $b = "";
  if (defined($ARGV[$count+1])) { $b = $ARGV[$count+1]; }
  
  for ($a)
  {
    /^-3(d?)$/ && do { $inFileSpecified = 1; $inFile = "rtest3.txt"; $count++; next; };
    /^-4(d?)$/ && do { $inFileSpecified = 1; $inFile = "rtest4.txt"; $count++; next; };
    /^-4(d?)s$/ && do { $inFileSpecified = 1; $inFile = "rtest4s.txt"; $count++; next; };
	/^-p$/ && do { $inFileSpecified = 1; $inFile = "rtest$b.txt"; $count += 2; next; };
	/^[0-9]/ && do { $iterations = $a; $count++; next; };
	/^-?ea/ && do { $eraseAfter = 1; $count++; next; };
	/^-ar/ && do { $allowRand = 1; $count++; next; };
	/^-?ca/ && do { $eraseRandOut = $eraseRand = 1; $count++; next; };
	/^-?co/ && do { $eraseRandOut = 1; $count++; next; };
	/^-?c/ && do { $eraseRand = 1; $count++; next; };
	/^-?a6/ && do { $onlyFinal = 0; $count++; next; };
	/^-?of/ && do { $onlyFinal = 1; $count++; next; };
	/^-?y/ && do { $copyOver = 1; $count++; next; };
	/^-?n/ && do { $copyOver = 0; $count++; next; };
	/^-?t/ && do { $trackScenery = 1; $count++; next; };
	/^-?h/ && do { $showZeros = 0; $count++; next; };
	/^-?z/ && do { $showZeros = 1; $count++; next; };
	/^-?i/ && do { $iterations = $b; $count += 2; next; };
	usage();
  }
}

if (!$inFileSpecified)
{
  if (-f "rtest4.txt")
  {
    $inFile = "rtest4.txt"; print "RTEST.TXT not found, going with rtest4.\n";
	if (-f "rtest3.txt") { print "There's also an rtest3, so if you want that, you need to specify it. I default to fourdiopolis.\n"; }
  }
  elsif (-f "rtest3.txt") { $inFile = "rtest3.txt"; }
}

if ((getcwd() eq "c:\\games\\inform\\prt") && ($copyOver == 1)) { $copyOver = 0; print "Already in PRT directory, not copying over.\n"; }

open(A, "$inFile") || bail();

while ($a = <A>)
{
  if ($a =~ /^prefix:/i)
  {
    chomp($a);
	$prefix = $a;
	$prefix =~ s/^prefix://gi;
	last;
  }
}

if (!$prefix) { print "$inFile must have prefix:"; exit; }

if (($eraseRandOut) && (getcwd() eq "c:\\games\\inform\\prt"))
{
  print "-co in the out directory reverts to -c.\n";
  if ($eraseRand) { print "You're already erasing the input, so this will have no effect.\n"; }
  $eraseRand = 1;
  $eraseRandOut = 0;
}

if ($eraseRand) { print "Clearing local directory of $prefix-*\n"; unlink<reg-$prefix-*rand.txt>; }
if ($eraseRandOut)
{
  print "Clearing regression test directory of $prefix-*\n"; unlink<"c:/games/inform/prt/reg-$prefix-*rand.txt">;
}

if ($iterations)
{
  for $count (1..$iterations) { writeTestFile($count, $iterations); }
  print "Final"; 
} else { writeTestFile(""); print "Only"; }

print " file created: $outFile\n";

if ($copyOver)
{
  print "Copying reg-$prefix-* to prt directory.\n";
  `copy reg-$prefix-* c:\\games\\inform\\prt`;
}

if (($eraseAfter) && (getcwd() ne "c:\\games\\inform\\prt"))
{
  print "Deleting reg-$prefix-*rand.txt created.\n";
  unlink<reg-$prefix-*rand.txt>;
}

sub writeTestFile
{

open(A, "$inFile");

if (!$_[0])
{
  $outFile = "reg-$prefix-rand.txt";
}
else
{
  my $zeros = '0' x (length($_[1]) - length($_[0]));
  $outFile = "reg-$prefix-$zeros$_[0]-rand.txt";
}

open (B, ">$outFile");

print B "## file name: $outFile\n";

my %equiv;

my $cmd = "r";
my @sortArray = ();
my $curScen = 0;
my $scenery = 0;

while ($a = <A>)
{
    chomp($a);
  if ($a =~ /^prefix/i) { next; }
  if ($a =~ /~~/) { chomp($a); my @b = split("~~", $a); $equiv{$b[0]} = $b[1]; next; }
  if ($a =~ /^(\*\*|##)/) { print B "$a\n"; next; }
  #if (($a =~ /^\* /) && ($onlyFinal)) { if ($a =~ /search-test-[1-5]/) { $a =~ s/search-/_search-/; die; } next; }
  if ($a =~ /^cmd:/i) { $a =~ s/^cmd://gi; $cmd = $a; next; }
  if ($a eq "\\") { print B "\n"; next; }

  if ($a =~ /^3-r/)
  {
    print B "* search-test-regular\n\n> j\n\n";
    $harvestRandoms = 1; @sortArray = (); next;
  }
  if ($a =~ /^3-s/)
  {
    print B "* search-test-scenery\n\n> see new seens\n\n> j\n\n";
    $harvestRandoms = 1; @sortArray = (); next;
  }
  #fourdiopolis, force a certain scenario
  if ($a =~ /^fo /)
  {
    my $x = $a; $x =~ s/^fo //g; chomp($x);
    print B "* ";
	if (($onlyFinal) && ($x =~ /[1-5]/)) { print B "_"; }
	print B "search-test-$x\n\n>fo $x\n";
	if (!$allowRand) { print B "\n>t\n"; }
	print B "\n";
    if ($a =~ /^fo sc/) { $scenery = 1; }
    $harvestRandoms = 1; @sortArray = (); next;
  }
  if ($harvestRandoms)
  {
    if ($a !~ /[a-z]/)
    {
	  #print "Sorting " . ($#sortArray + 1) . " elements.\n";
      my @sa = shuffle(@sortArray); $harvestRandoms = 0;
	  my $idx = 0;
	  for my $shuf (@sa)
	  {
        for my $pre (sort keys %equiv)
	    {
	      if ($shuf =~ /^> $pre/)
	      { $shuf =~ s/\n/\n$equiv{$pre}\n/; delete $equiv{$pre}; }
	    }
		if (($idx == $#sa) && ($shuf =~ /> suss[^u]/))
		{
		  print "Suspicious guy came last in $_[0].\n";
		  #print "Before: $shuf\n";
		  $shuf =~ s/> 6/> p/; $shuf =~ s/He looks.*//g;
		  #print "After: $shuf\n";
		} # this is so the suspicious guy coming last doesn't foil you
		$idx++;
	  }
      if (($trackScenery) && ($scenery))
      {
        for (@sa) { $curScen++; $_ .= "\nWRONG $curScen"; }
        $trackScenery = 0;
      }
      $scenery = 0;
      #print join("\n", @sa); print B "\n"; next;
      print B join("\n\n", @sa); print B "\n\n"; next;
    }
	if (($cmd eq "r") || ($cmd eq "p"))
	{
    $a =~ s/\|/\n/g;
	$a .= "\n> $cmd";
	}
	else
	{
    $a =~ s/\|/\n> $cmd\n/g;
	$a =~ s/\\/\n/g;
	}
    push(@sortArray, "> $a");
  }
  else { print B "$a\n"; }
}

close(A);
close(B);

}

sub bail
{
  my $dieString = "Can't open $inFile";
  if ($inFile eq "rtest.txt") { $dieString .= " or any of its variants rtest3.txt or rtest4.txt"; }
  die ("$dieString.\n");
}

sub usage
{
print<<EOT;

USAGE FOR OPOTST.PL
======================================

-3 looks for rtext3 first
-4 looks for rtext4 first (default is rtext)
-c clears local files before making new ones
-co clears files in games\\inform\\prt before making new ones
-ca clears files in both directories before making new ones
-t tracks scenery
000 or -i 000 specifies number of iterations
-h or -z decides whether to hide or show zeros (1 or 001, default is to show them)
-y or -n decides whether to copy over (default is y unless you are in games\\inform\\prt)
-ea erases after

Usages:
ni 4d
opotst.pl -4s 20 -ea
opotst.pl -4d 20 -ea

EOT
exit;

}