import os
import sys
import subprocess

print('Bolt Editor Launcher')
print('(C) 2024-2025 m1ntkat')
print("")

application_path = os.path.dirname(sys.executable)

# determine if application is a script file or frozen exe
if getattr(sys, 'frozen', False):
    application_path = os.path.dirname(sys.executable)
elif __file__:
    application_path = os.path.realpath(os.path.dirname(__file__))

args = ""

for arg in sys.argv:
    args += arg + " "

exit_code = subprocess.run(
    '"' 
    +  application_path
    + '/bolt.exe" --dev ' 
    + args,
    shell=False
)

os._exit(exit_code.returncode)
