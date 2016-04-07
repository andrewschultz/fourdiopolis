#######################################
#locs.pl
#this verified threediopolis locations
#
#no command line needed

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
  chomp($a);
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
  
}
