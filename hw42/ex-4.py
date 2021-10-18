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
    print('[ERROR]', google_url[0], 'IP mismatch: OLD', new_line[0],' - NEW', ip_list[0])
if ip_list[1] != new_line[1]: 
    print('[ERROR]', google_url[1], 'IP mismatch: OLD', new_line[1],' - NEW', ip_list[1])
if ip_list[2] != new_line[2]: 
    print('[ERROR]', google_url[2], 'IP mismatch: OLD', new_line[2],' - NEW', ip_list[2])
