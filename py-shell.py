#!/usr/bin/python
import subprocess, os

#print __file__
#print os.path.abspath(__file__)
#print os.path.dirname(os.path.abspath(__file__))
#exit(0)

#pr = subprocess.Popen(['/usr/bin/git', 'status'],                  
#       cwd=os.path.dirname(os.path.abspath(__file__)), 
#       stdout=subprocess.PIPE, 
#       stderr=subprocess.PIPE, 
#       shell=False)

#'/usr/bin/git status'
#'/usr/bin/git add .'
#'/usr/bin/git diff --cached'
pr = subprocess.Popen('/usr/bin/git status',                  
       cwd=os.path.dirname(os.path.abspath(__file__)), 
       stdout=subprocess.PIPE, 
       stderr=subprocess.PIPE, 
       shell=True)
(out, error) = pr.communicate()
print out
