#!/usr/bin/perl

$project = "mht75_ics"; #mtk75_ics mht75_ics
$cmd = "checkout"; #list rm clone checkout
$cmd_target = "all_repos"; #driver_repos ui_repos all_repos
$cmd_arg = "gt-i9300 75 d";

$repo_dir = "/home/pageask/repositories/alps/";
@driver_repos = 
  (
    "mediatek/custom/common/kernel",
    "mediatek/custom/common/uboot",
    "mediatek/custom/$project",
    "mediatek/build/tools",
    "mediatek/config/$project",
    "mediatek/custom/common/modem",
    "mediatek/custom/common/cgen",
    "mediatek/source/packages/EngineerMode",
    "mediatek/source/external/boot_logo_updater",
    "mediatek/custom/common/hal",
    "mediatek/platform",
    "mediatek/source/kernel/drivers",
  );
@ui_repos = 
  (
    "frameworks/base/packages/SystemUI",
    "frameworks/base/core",
    "build",
    "frameworks/base/data",
    "frameworks/base/policy",
    "packages/apps/Contacts",
    "packages/apps/Phone",
    "packages/apps/DeskClock",
    "packages/apps/Launcher2",
    "packages/apps/Mms",
    "packages/apps/Settings",
  );

if ($cmd eq "list") {
    if ($cmd_target eq "driver_repos" || $cmd_target eq "all_repos") {
        $repos_count = @driver_repos;
        $workdir_count = 0;
        foreach $repo (@driver_repos) {
            if ( -e $repo ) {
                print "$repo\n";
                $workdir_count++;
            }
        }
        print "**********************************\n";
        print "${workdir_count}/${repos_count}\n";
        print "**********************************\n";
    }
    if ($cmd_target eq "ui_repos" || $cmd_target eq "all_repos") {
        $repos_count = @ui_repos;
        $workdir_count = 0;
        foreach $repo (@ui_repos) {
            if ( -e $repo ) {
                print "$repo\n";
                $workdir_count++;
            }
        }
        print "**********************************\n";
        print "${workdir_count}/${repos_count}\n";
        print "**********************************\n";
    }
}

if ($cmd eq "rm") {
    if ($cmd_target eq "driver_repos" || $cmd_target eq "all_repos") {
        foreach $repo (@driver_repos) {
            if ( -e $repo ) {
                print "rm -fr $repo\n";
                system("rm -fr $repo");
            }
        }
    }
    if ($cmd_target eq "ui_repos" || $cmd_target eq "all_repos") {
        foreach $repo (@ui_repos) {
            if ( -e $repo ) {
                print "rm -fr $repo\n";
                system("rm -fr $repo");
            }
        }
    }
}

if ($cmd eq "clone") {
    if ($cmd_target eq "driver_repos" || $cmd_target eq "all_repos") {
        foreach $repo (@driver_repos) {
            if ( !-e $repo ) {
                print "git clone ${repo_dir}${repo}.git ${repo}\n";
                system("git clone ${repo_dir}${repo}.git ${repo}");
            }
        }
    }
    if ($cmd_target eq "ui_repos" || $cmd_target eq "all_repos") {
        foreach $repo (@ui_repos) {
            if ( !-e $repo ) {
                print "git clone ${repo_dir}${repo}.git ${repo}\n";
                system("git clone ${repo_dir}${repo}.git ${repo}");
            }
        }
    }
}

if ($cmd eq "checkout") {
    @args = split(" ", $cmd_arg);
    if ($cmd_target eq "driver_repos" || $cmd_target eq "all_repos") {
        foreach $repo (@driver_repos) {
            if ( -e $repo ) {
                if ($repo eq "mediatek/config/$project") {
                    print "(cd ${repo} && git checkout $args[0]-$args[1]-$args[2])\n";
                    system("(cd ${repo} && git checkout $args[0]-$args[1]-$args[2])");
                } elsif ($repo eq "mediatek/custom/common/modem") {
                    print "(cd ${repo} && git checkout $args[0]-$args[1])\n";
                    system("(cd ${repo} && git checkout $args[0]-$args[1])");
                } else {
                    print "(cd ${repo} && git checkout $args[0])\n";
                    system("(cd ${repo} && git checkout $args[0])");
                }
            }
        }
    }
    if ($cmd_target eq "ui_repos" || $cmd_target eq "all_repos") {
        foreach $repo (@ui_repos) {
            if ( -e $repo ) {
                print "(cd ${repo} && git checkout $args[0])\n";
                system("(cd ${repo} && git checkout $args[0])");
            }
        }
    }
}
