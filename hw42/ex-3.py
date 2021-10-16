#!/usr/bin/env python3

import os
import sys

script_path ="cd " + sys.argv[1]
bash_command = [script_path, "git status"]
result_os = os.popen(' && '.join(bash_command)).read()
for result in result_os.split('\n'):
    if result.find('modified') != -1:
        prepare_result = result.replace('\tmodified:   ', sys.argv[1] + '/')
        print(prepare_result)
