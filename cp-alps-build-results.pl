#!/usr/bin/perl

$results_dir = "/home/pageask/results_dir/";

$dir = "out/target/product/mtk75_ics/";
@files = 
qw(
    android-info.txt
    cache.img
    clean_steps.mk
    DSP_BL
    boot.img
    EBR1
    EBR2
    factory.ini
    installed-files.txt
    kernel
    kernel_mtk75_ics.bin
    logo.bin
    MBR
    MT6575_Android_scatter_emmc.txt
    preloader_mtk75_ics.bin
    previous_build_config.mk
    ramdisk.img
    ramdisk-recovery.img
    recovery.img
    secro.img
    system.img
    uboot_mtk75_ics.bin
    userdata.img
  );

system("mkdir -p $results_dir") if (!-d $results_dir);
system("rm -fr $results_dir/*");

foreach $file (@files)
{
    system("cp $dir$file $results_dir");
}
