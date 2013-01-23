#!/bin/bash -

project="mtk75_ics"
build_variant="user"
##############################################################################
#gt-i9100-15a-d

#prepare-build-alps-workspace.sh gt-i9100-15a-d $project $build_variant
##############################################################################

##############################################################################
#gt-i9100-15a-s
prepare-build-alps-workspace.sh gt-i9100-15a-s $project $build_variant
##############################################################################

##############################################################################
#gt-i9100-75-d

#prepare-build-alps-workspace.sh gt-i9100-75-d $project $build_variant
##############################################################################

##############################################################################
#gt-i9100-75-s

#prepare-build-alps-workspace.sh gt-i9100-75-s $project $build_variant
##############################################################################

project="mht75_ics"
build_variant="user"
##############################################################################
#gt-i9300-1023-75-d

#prepare-build-alps-workspace.sh gt-i9300-1023-75-d $project $build_variant
##############################################################################

##############################################################################
#gt-i9300-1023-75-s

#prepare-build-alps-workspace.sh gt-i9300-1023-75-s $project $build_variant

#prepare-build-alps-workspace.sh gt-i9300-1023-75-s-cheng $project $build_variant
#prepare-build-alps-workspace.sh gt-i9300-1023-75-s-cheng-en $project $build_variant

#prepare-build-alps-workspace.sh gt-i9300-1023-75-s-wu $project $build_variant
#prepare-build-alps-workspace.sh gt-i9300-1023-75-s-wu-en $project $build_variant
##############################################################################

project="mobitek77_m01_ics2"
build_variant="user"
##############################################################################
#a02-77-d

#prepare-build-alps-workspace.sh a02-77-d $project $build_variant
##############################################################################

##############################################################################
#a02-77-s

#prepare-build-alps-workspace.sh a02-77-s $project $build_variant
#prepare-build-alps-workspace.sh a02-77-s-6620 $project $build_variant

prepare-build-alps-workspace.sh a02-77-s-6620-cheng $project $build_variant

#prepare-build-alps-workspace.sh a02-77-s-6620-li $project $build_variant
#prepare-build-alps-workspace.sh a02-77-s-6620-li-en $project $build_variant

#prepare-build-alps-workspace.sh a02-77-s-6620-yao $project $build_variant
##############################################################################

#shutdown -h now
