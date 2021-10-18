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

## ЗАДАНИЕ 4

```python3
#!/usr/bin/env python3

google_url = ('drive.google.com', 'mail.google.com', 'google.com')
import socket
import re

google_url = ('drive.google.com', 'mail.google.com', 'google.com')

with open("url_check.log", "r") as log_file:
    line = log_file.readlines()
new_line = [re.sub('\n','', i) for i in line]

ip_list = []

with open("url_check.log", "w") as log_file:
  for url in google_url:
    start_check = socket.gethostbyname(url)
    ip_list.append(start_check)
    print( url, ' - ', start_check)
    log_file.write(start_check + '\n')
print(' ')
if ip_list[0] != new_line[0]: 
    print('[ERROR]', google_url[0], 'IP mismatch: OLD ', new_line[0],'- NEW', ip_list[0])
if ip_list[1] != new_line[1]: 
    print('[ERROR]', google_url[1], 'IP mismatch: OLD ', new_line[1],'- NEW', ip_list[1])
if ip_list[2] != new_line[2]: 
    print('[ERROR]', google_url[2], 'IP mismatch: OLD ', new_line[2],'- NEW', ip_list[2])
```
#### Комментарий к заданию:
Скрипт начинает правильно отрабатывать со второго раза, когда в файл вносится первая запись полученных адресов. Возможно эту задачу можно было решить элегантней, но у меня пока исправно работает концепция сверки двух списков. Надеюсь такая реализация тоже допустима.
