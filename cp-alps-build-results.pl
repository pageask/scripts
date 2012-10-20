#!/usr/bin/perl

if ($#ARGV + 1 != 2) {
    print "cp-alps-build-results.pl mht75_ics gt-i9300-75-d\n";
    exit 0;
}

$project = $ARGV[0];
$branch = $ARGV[1];

$results_dir = "/home/pageask/results_dir/";

$dir = "out/target/product/$project/";
@files = 
  (
    "android-info.txt",
    "cache.img",
    "clean_steps.mk",
    "DSP_BL",
    "boot.img",
    "EBR1",
    "EBR2",
    "factory.ini",
    "installed-files.txt",
    "kernel",
    "kernel_$project.bin",
    "logo.bin",
    "MBR",
    "MT6575_Android_scatter_emmc.txt",
    "preloader_$project.bin",
    "previous_build_config.mk",
    "ramdisk.img",
    "ramdisk-recovery.img",
    "recovery.img",
    "secro.img",
    "system.img",
    "uboot_$project.bin",
    "userdata.img",
  );

my($sec, $min, $hour, $mday, $mon, $year) = localtime(time);
$date_time_dir = (sprintf "%4.4d-%2.2d-%2.2d-%2.2d-%2.2d-%2.2d", $year+1900, $mon+1, $mday, $hour, $min, $sec);
$results_dir = "${results_dir}${branch}-${date_time_dir}";
#print $results_dir;

system("mkdir -p $results_dir") if (!-d $results_dir);
foreach $file (@files)
{
    system("cp $dir$file $results_dir");
}
