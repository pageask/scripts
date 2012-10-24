#!/usr/bin/perl

if ($#ARGV + 1 != 3) {
    print "cp-alps-build-results.pl project branch build_variant\n";
    exit 0;
}

$project = $ARGV[0];
$branch = $ARGV[1];
$build_variant = $ARGV[2];

$database_modem_file = "mediatek/custom/common/modem/${project}_hspa/BPLGUInfoCustomApp*";
$database_ap_file = "mediatek/source/cgen/APDB_*_";

$bin_src_dir = "out/target/product/$project";
@bin_src_files = 
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

$results_dir = "/home/pageask/results_dir";
my($sec, $min, $hour, $mday, $mon, $year) = localtime(time);
$date_time = (sprintf "%4.4d-%2.2d-%2.2d-%2.2d-%2.2d-%2.2d", $year+1900, $mon+1, $mday, $hour, $min, $sec);
$bin_database_dir = "${branch}-${date_time}-${build_variant}";
$bin_database_dir = "${results_dir}/${bin_database_dir}";
#print "$bin_database_dir\n";
#exit 0;

$bin_dir = "${bin_database_dir}/bin";
system("mkdir -p $bin_dir") if (!-d $bin_dir);
foreach $file (@bin_src_files)
{
    $bin_src_file = "${bin_src_dir}/$file";
    system("cp $bin_src_file $bin_dir");
}

$database_dir = "${bin_database_dir}/database";
system("mkdir -p $database_dir") if (!-d $database_dir);
system("cp $database_modem_file $database_dir");
system("cp $database_ap_file $database_dir");

