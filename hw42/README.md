# netology-homework 4.2


## ЗАДАНИЕ 1

```python3
a = 1
b = '2'
c = a + b
```
1. TypeError: unsupported operand type(s) for +: 'int' and 'str' 
2. Если значение  a ='1' будет типа str ответ получим: 12
3. Если значение  b = 2 будет типа int ответ получим: 3

## ЗАДАНИЕ 2

```python3
#!/usr/bin/env python3

import os

bash_command = ["cd ~/netology/sysadm-homeworks", "git status"]
result_os = os.popen(' && '.join(bash_command)).read()
is_change = False							# эта переменная не используется, можно удалить
for result in result_os.split('\n'):
    if result.find('modified') != -1:
        prepare_result = result.replace('\tmodified:   ', '')
        print(prepare_result)
        break```python3							# break мешает выводу всех результатов 
```
#### Итог задания 2:

```python3
#!/usr/bin/env python3

import os

bash_command = ["cd ~/netology-homework", "git status"]
result_os = os.popen(' && '.join(bash_command)).read()
for result in result_os.split('\n'):
    if result.find('modified') != -1:
        prepare_result = result.replace('\tmodified:   ', bash_command[0].split(' ')[1] + '/')
        print(prepare_result)
```

## ЗАДАНИЕ 3

```python3
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
```


