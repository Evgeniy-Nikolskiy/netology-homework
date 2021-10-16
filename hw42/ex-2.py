#!/usr/bin/env python3

import os

bash_command = ["cd ~/netology-homework", "git status"]
result_os = os.popen(' && '.join(bash_command)).read()
for result in result_os.split('\n'):
    if result.find('modified') != -1:
        print(result)
	prepare_result = result.replace('\tmodified:   ', '')
        print(prepare_result)
