#rtest.pl
#makes a random file for running tests on

use List::Util 'shuffle';

$digit = 4;
$inter = "/home/andrew/prt/glulxe";

$special{"die"} = "p";

$trackScenery = 1;

if (@ARGV[0] == 3)
{
  $digit = 3;
  $inter = "/home/andrew/prt/dumbfrotz";
}

$outFile = "c:\\games\\inform\\prt\\$digit" . "drandtest.txt";

open(A, $digit . "drand.txt");

open (B, ">$outFile");

print B "# 4drand test\n";
print B "# Run with regtest.pl at http://eblong.com/zarf/plotex/regtest.html\n";
print B "\n\n** game: /home/andrew/prt/debug-fourdiopolis.ulx\n";
print B "** interpreter: $inter\n\n\n";


while ($a = <A>)
{
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
      @sa = shuffle(@sortArray); $harvestRandoms = 0;
      if (($trackScenery) && ($scenery))
      {
        for (@sa) { $curScen++; $_ .= "\nWRONG $curScen"; }
        $trackScenery = 0;
      }
      $scenery = 0;
      print B join("\n\n", @sa); print B "\n\n"; next;
    }
    chomp($a);
	if ($special{$a})
	{
    $a =~ s/\|/\n/g;
	$a .= "\n> $special{$a}";
	}
    elsif ($scenery)
    {
    $a =~ s/\|/\n/g;
    $a .= "\n> r";
    }
    else
    {
    $a =~ s/\|/\n> c\n/g;
    }
    push(@sortArray, "> $a");
  }
}

close(A);
close(B);

`$outFile`;