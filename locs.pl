#######################################
#locs.pl
#this verifies threediopolis/fourdiopolis locations
#
#no command line needed
#
#however, if command line is specified we try the commands on there
#
#eg locs.pl ididiundid

my $printRes = 0;

if (@ARGV[0]) { $printRes = 1; for $str (@ARGV) { processLine($str); } exit; }

open(A, "story.ni") || die ("Need fourdiopolis source.");

while ($a = <A>)
{
  $line++;
  if (($a =~ /^table/) && ($a !~ /\t/) && ($a !~ /table of (silly jokes|far blab)/)) { $myTable = $a; $inTable = 1; chomp($myTable); }
  if ($a !~ /[a-z]/) { $inTable = 0; }
  if (($a =~ /^\".*\t/) && ($inTable)) { processLine($a); }
}

sub processLine
{
  my $a = lc($_[0]);
  my $x = 0;
  my $y = 0;
  my $z = 0;
  my $printRes = 0;
  my $count = 0;
  chomp($a);
  if ($a !~ /\"/) { $printRes = 1; }
  $a =~ s/^\"//g;
  $a =~ s/\".*//g;
  @b = split(//, $a);
  for (@b)
  {
    if ($_ eq "d") { $z -= 1; }
    elsif ($_ eq "e") { $x += 1; }
    elsif ($_ eq "h") { $x += 2; $y += 2; $z += 2; }
    elsif ($_ eq "i") { $x += 2; $y -= 2; $z -= 2; }
    elsif ($_ eq "j") { $x -= 2; $y += 2; $z -= 2; }
    elsif ($_ eq "k") { $x -= 2; $y -= 2; $z += 2; }
    elsif ($_ eq "n") { $y += 1; }
    elsif ($_ eq "s") { $y -= 1; }
    elsif ($_ eq "u") { $z += 1; }
    elsif ($_ eq "w") { $x -= 1; }
	else { print "Invalid character $_ in word $_[0].\n"; return; }
    if (($x > 9) || ($y > 9) || ($z > 9) || ($x < -9) || ($y < -9) || ($z < -9))
    {
      print "$a out of bounds at letter $count, location $x $y $z, table $myTable, line $line.\n";
	  return;
    }
	$count++;
  }
  if ($printRes) { print "$a => " . ltr($z) . ltr($y) . ltr($x) . "\n"; }  
}

sub ltr
{
  if ($_[0] >= 0) { return $_[0]; }
  return chr(64-$_[0]);
}