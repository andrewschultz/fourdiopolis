#######################################
#locs.pl
#this verified threediopolis locations
#
#no command line needed

if (@ARGV[0]) { processLine(@ARGV[0]); }

open(A, "story.ni") || die ("Need fourdiopolis source.");

while ($a = <A>)
{
  $line++;
  if ($a =~ /^table/) { $myTable = $a; chomp($myTable); }
  if ($a =~ /^\".*\t/) { processLine($a); }
}

sub processLine
{
  my $a = lc($_[0]);
  my $x = 0;
  my $y = 0;
  my $z = 0;
  my $printRes = 0;
  chomp($a);
  if ($a !~ /\"/) { $printRes = 1; }
  $a =~ s/^\"//g;
  $a =~ s/\".*//g;
  @b = split(//, $a);
  for (@b)
  {
    if ($_ eq "d") { $z -= 1; }
    if ($_ eq "e") { $x += 1; }
    if ($_ eq "h") { $x += 2; $y += 2; $z += 2; }
    if ($_ eq "i") { $x += 2; $y -= 2; $z -= 2; }
    if ($_ eq "j") { $x -= 2; $y += 2; $z -= 2; }
    if ($_ eq "k") { $x -= 2; $y -= 2; $z += 2; }
    if ($_ eq "n") { $y += 1; }
    if ($_ eq "s") { $y -= 1; }
    if ($_ eq "u") { $z += 1; }
    if ($_ eq "w") { $x -= 1; }
    if (($x > 9) || ($y > 9) || ($z > 9) || ($x < -9) || ($y < -9) || ($z < -9))
    {
      print "$a out of bounds at letter $count, location $x $y $z, table $myTable, line $line.\n";
    }
  }
  if ($printRes) { print "$a => " . ltr($z) . ltr($y) . ltr($x) . "\n"; }  
}

sub ltr
{
  if ($_[0] >= 0) { return $_[0]; }
  return chr(64-$_[0]);
}