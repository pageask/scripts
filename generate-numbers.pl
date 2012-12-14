#!/usr/bin/perl

$initial = 19;
$step = 25;

for($i = 0; $i < 27; $i++) {
    print "<item>$initial</item>\n";
    $initial += $step;
}
