############pos.pl
# shows all combos of how to get a certain place
# also just handy to see the end result location from a certain path.

if (@ARGV[0])
{
  for $word (@ARGV) { showPos($word); }
}
else
{
showPos("hiddenness");
showPos("jenkins");
}

sub h2k
{
  my $count=0;
  my @a;
  for (1..$_[0]) { push (@a, "h"); }
  while (@a[0] ne "l")
  {
    $xd = $yd = $zd = 0;
    $count++;
    #print "$count: @a\n";
    $x = $#a;
  for (@a)
  {
    /h/ && do { $xd+=2; $yd+=2; $zd+=2; next; };
    /i/ && do { $xd+=2; $yd-=2; $zd-=2; next; };
    /j/ && do { $xd-=2; $yd+=2; $zd-=2; next; };
    /k/ && do { $xd-=2; $yd-=2; $zd+=2; next; };
  }
  $walkleft = abs ($xd - $_[1]) + abs ($yd - $_[2]) + abs ($zd - $_[3]);
  if (($walkleft <= $_[4]) && (($walkleft + $_[4]) % 2 == 0))
  {
    print "@a valid with $tempstr, teleports = $xd $yd $zd.";
	$x1 = $_[1] - $xd;
	$y1 = $_[2] - $yd;
	$z1 = $_[3] - $zd;
	if ($x1 > 0) { print " $x1 E"; }
	elsif ($x1 < 0) { $x1 = -$x1; print " $x1 W"; }
	if ($y1 > 0) { print " $y1 N"; }
	elsif ($y1 < 0) { $y1 = -$y1; print " $y1 S"; }
	if ($z1 > 0) { print " $z1 U"; }
	elsif ($z1 < 0) { $z1 = -$z1; print " $z1 D"; }
	print "\n";
  }
  else
  {
    #print "@a walk too far away $tempstr, $walkleft vs $_[4].\n";
  }
	if (@a[0] eq "k") { last; }
    while (@a[$x] eq "k") { $x--; }
    $y = chr(1+ord(@a[$x]));
    for ($x..$_[0]-1)
    {
      @a[$_] = $y;
    }
  }
  $count++;
  #print "$count: @a\n";
}

sub showPos
{
  my $x = my $y = my $z = 0;

  my @a = split(//, $_[0]);
  $tempstr = $_[0];

  my $retreats = 0;
  
  if ($a =~ /[A-Z]/) { print "Note that upper case letters mean backwards.\n"; }
  
  for (@a)
  {
    /[UDNSEWHIJK]/ && do { $retreats++; };
    /[eW]/ && do { $x++; next; };
    /[nS]/ && do { $y++; next; };
    /[uD]/ && do { $z++; next; };
    /[wE]/ && do { $x--; next; };
    /[sN]/ && do { $y--; next; };
    /[dU]/ && do { $z--; next; };
    /h/ && do { $x+=2; $y+=2; $z+=2; next; };
    /H/ && do { $x-=2; $y-=2; $z-=2; next; };
    /i/ && do { $x+=2; $y-=2; $z-=2; next; };
    /I/ && do { $x-=2; $y+=2; $z+=2; next; };
    /j/ && do { $x-=2; $y+=2; $z-=2; next; };
    /J/ && do { $x+=2; $y-=2; $z+=2; next; };
    /k/ && do { $x-=2; $y-=2; $z+=2; next; };
    /K/ && do { $x+=2; $y+=2; $z-=2; next; };
    print "Oops invalid char $_.\n";
  }

  print "OK, position = $x/$y/$z or " . loc4($z) . loc4($y) . loc4($x) . "\n";
  $parity = length($_[0]) - $x - $y - $z;
  $parity %= 2;
  
  if (!$parity)
  {
  $minWalk = mins($x) + mins($y) + mins($z);
  }
  else
  {
  $minWalk = mins($x+2) + mins($y+2) + mins($z+2);
  }
 
  $telep = length($_[0]) - $minWalk;
  print "Minimum walk = $minWalk. Possible teleport = $telep.\n";

  $sttel = $telep % 2;
  if (!$sttel) { $sttel = 2; }

  my $q = $sttel;

  while ($q <= $telep)
  {
    print "Trying $q teleports.\n";
    h2k($q, $x, $y, $z, length($_[0]) - $q - 2 *$retreats);
    $q += 2;
  }

}

sub mins
{
  if ($_[0] % 4 == 2) { return 2; }
  if ($_[0] % 2 == 1) { return 1; }
}

sub loc4
{
  if ($_[0] >= 0) { return $_[0]; }
  return chr(64 - $_[0]);
}

sub calcRoute;
{


}
