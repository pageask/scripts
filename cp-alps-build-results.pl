#!/usr/bin/perl

if ($#ARGV + 1 != 3) {
    print "cp-alps-build-results.pl branch project build_variant\n";
    exit 0;
}

$branch = $ARGV[0];
$project = $ARGV[1];
$build_variant = $ARGV[2];

my $modem_database_file = "mediatek/custom/common/modem/${project}_hspa/BPLGUInfoCustomApp*";
my $ap_database_file = "mediatek/source/cgen/APDB*";
my @bin_files = <out/target/product/$project/*>;

my($sec, $min, $hour, $mday, $mon, $year) = localtime(time);
my $date_time = (sprintf "%4.4d-%2.2d-%2.2d-%2.2d-%2.2d-%2.2d", $year+1900, $mon+1, $mday, $hour, $min, $sec);

my $results_dir = "/home/pageask/results_dir";
if ($build_variant eq "eng") {
    $results_dir = "/home/pageask/share";
}

my $bin_database_dir = "${branch}-${date_time}-${build_variant}";
my $bin_database_dir = "${results_dir}/${bin_database_dir}";

my $bin_dir = "${bin_database_dir}/bin";
system("mkdir -p $bin_dir") if (!-d $bin_dir);
foreach my $file (@bin_files)
{
    if (-f $file) {
        system("cp $file $bin_dir");
    }
}

my $database_dir = "${bin_database_dir}/database";
system("mkdir -p $database_dir") if (!-d $database_dir);
system("cp $modem_database_file $database_dir");
system("cp $ap_database_file $database_dir");

