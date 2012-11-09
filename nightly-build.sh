#!/bin/bash -

cd ~/projects/release/gt-i9100-15a-d
#sm-alps.sh mtk75_ics gt-i9100-15a-d eng
sm-alps.sh mtk75_ics gt-i9100-15a-d user

cd ~/projects/release/gt-i9100-15a-s
#sm-alps.sh mtk75_ics gt-i9100-15a-s eng
sm-alps.sh mtk75_ics gt-i9100-15a-s user

cd ~/projects/release/gt-i9100-75-d
#sm-alps.sh mtk75_ics gt-i9100-75-d eng
sm-alps.sh mtk75_ics gt-i9100-75-d user

cd ~/projects/release/gt-i9100-75-s
#sm-alps.sh mtk75_ics gt-i9100-75-s eng
sm-alps.sh mtk75_ics gt-i9100-75-s user

cd ~/projects/release/gt-i9300-1023-75-d
#sm-alps.sh mht75_ics gt-i9300-1023-75-d eng
sm-alps.sh mht75_ics gt-i9300-1023-75-d user

cd ~/projects/release/gt-i9300-1023-75-s
#sm-alps.sh mht75_ics gt-i9300-1023-75-s eng
sm-alps.sh mht75_ics gt-i9300-1023-75-s user

#shutdown -h now
