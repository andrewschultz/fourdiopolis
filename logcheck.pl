open(A, "story.ni") || die ("No story.ni");

$blammo = 0;

open(A, "fourdiopolis-logic.txt");

while ($a = <A>)
{
  if ($a =~ /====[a-z]/) { setTable($a); next; }
  if (($a =~ /,/) && ($a !~ /\./))
  {
    $inSummary = 1;
    chomp($a);
	$a =~ s/\([^\)]*\)//g;
	$a =~ s/[ \*]//g;
	if ($currentSummary) { $currentSummary = "$currentSummary,$a"; } else { $currentSummary = $a; }
	next;
  }
  if ($inSummary)
  {
    #print "$currentSummary\n";
    verify($currentSummary);
	$currentSummary = "";
	$inSummary = 0;
  }
}

close(A);

sub setTable
{
  my $tabname = $_[0]; $tabname =~ s/=//g; chomp($tabname);
  my $foundTable = 0;
  my $everFound = 0;
  %loc = ();
  open(B, "story.ni");
  @locs = ();
  while ($b = <B>)
  {
    if ($b =~ /^table of $tabname.*\[/i)
	{
	  $everFound = 1;
	  $foundTable = 1;
	  $curTab = $b; chomp($curTab); $curTab =~ s/ *\[.*//g;
	  <B>;
	  next;
	}
	if ($foundTable)
	{
	  if ($b !~ /[a-z]/) { $foundTable = 0; if ($thisRound) { print "$thisRound errors found in $curTab.\n"; } else { print "No errors found in $curTab.\n"; next; } }
	  $abr = $b; chomp($abr); $abr =~ s/^\"//g; $abr =~ s/\".*//g;
	  push (@locs, $abr);
	}
  }
  if (!$everFound) { print ("$tabname was not found. Check your logic file and/or source.\n"); } else
  {
    #print "$tabname processed ok: @locs.\n";
  }
  close(B);
}

if ($blammo == 0) { print "ALL HEADERS PROCESSED CORRECTLY!\n"; }
else
{
print "# of errors found in logic document headers: $blammo.\n";
}

sub myloc
{
$x{"e"} = 1;
$x{"w"} = -1;

$y{"n"} = 1;
$y{"s"} = -1;

$z{"u"} = 1;
$z{"d"} = -1;

$x{"h"} = $y{"h"} = $z{"h"} = 2;
$x{"i"} = 2; $y{"i"} = $z{"i"} = -2;
$x{"j"} = -2; $z{"j"} = -2; $y{"j"} = 2;
$x{"k"} = $y{"k"} = -2; $z{"k"} = 2;

my $xtemp = 0;
my $ytemp = 0;
my $ztemp = 0;

@c = split(//, $_[0]);

for (@c)
{
  $xtemp += $x{$_};
  $ytemp += $y{$_};
  $ztemp += $z{$_};
}
$xtemp = tolet($xtemp);
$ytemp = tolet($ytemp);
$ztemp = tolet($ztemp);

return "$ztemp$ytemp$xtemp";
}

sub tolet
{
  if ($_[0] >= 0) { return $_[0]; }
  return chr(96-$_[0]);
}

sub verify
{
  my @cs = split(/,/, $currentSummary);
  
  for (0..$#cs)
  {
    my $temp = lc(@cs[$_]);
	my $q = myloc(@locs[$_]);
	if (($temp eq @locs[$_]) || ($temp eq $q)) { next; } else { print "Mismatch: $temp != $q and $temp != @locs[$_].\n"; $blammo++; $thisRound++; }
  }
  my $index = substr($_[0], 0, 1);
  my $printedYet = 0;

  my $splits = $_[0]; $splits =~ s/.*: *//g;
  my @ents = split(/, */, $splits);

  my $count = 0;

  for $q (sort keys %loc)
  {
    if ($q =~ /^$index/i)
    {
      if (@ents[$count] =~ /\?/) { print "$q/@ents[$count] is partially solved.\n"; next; }
      if (($q ne @ents[$count]) && ($loc{$q} ne @ents[$count]))
      {
          if (!$printedYet) { print "$_[0]:"; $printedYet = 1; }
		  print " Goofed at @ents[$count] in logic vs $q/$loc{$q}.\n"; $blammo++; return;
      }
      $count++;
    }
  }
  #print " SUCCESSFUL!\n";
}