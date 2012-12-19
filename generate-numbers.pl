#!/usr/bin/perl

#$initial = 19;
#$step = 25;

#for($i = 0; $i < 27; $i++) {
#    print "<item>$initial</item>\n";
#    $initial += $step;
#}

#for ($i = 0; $i <= 1300; $i++) {
for ($i = 0; $i <= 540; $i++) {
    #$point = int($i * 1280 / 960);
    $point = int($i * 720 / 540);
    print "${point}, ";
    if ($i % 20 == 0 && $i != 0) {
        print "\n";
    }
}
