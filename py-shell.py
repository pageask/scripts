import subprocess, os

#print __file__
#print os.path.abspath(__file__)
#print os.path.dirname(os.path.abspath(__file__))
#exit(0)

pr = subprocess.Popen(['/usr/bin/git', 'status'],                  
       cwd=os.path.dirname(os.path.abspath(__file__)), 
       stdout=subprocess.PIPE, 
       stderr=subprocess.PIPE, 
       shell=False)
(out, error) = pr.communicate()
print out
