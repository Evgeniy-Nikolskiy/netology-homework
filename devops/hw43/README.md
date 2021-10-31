
## ЗАДАНИЕ 1


```json
{ "info" : "Sample JSON output from our service\t",
    "elements" :[
        { "name" : "first",
        "type" : "server",
        "ip" : 7175		# здесь нужны кавычки "7175" и наверное вменяемый IP адрес 
        },
        { "name" : "second",
        "type" : "proxy",
        "ip : 71.78.22.43	# здесь также нужно закрыть кавычками "ip" и для "71.78.22.43"
        }
    ]
}
```


## ЗАДАНИЕ 2


```python3
#!/usr/bin/env python3

import socket
import json
import yaml

dict_google = [{"drive.google.com":""}, {"mail.google.com":""}, {"google.com":""}]


host_list = []
ip_list = []
new_ip_list = []

with open('g2.json') as json_file:
  dict_js = json.load(json_file)
  for key in dict_js:
   for k in key:
    ip_list.append(key[k])


with open('g2.json', 'w') as outfile:
  for host in dict_google:
    for h in host:
      host[h] = socket.gethostbyname(h)
    print( h, ' - ', host[h])
    new_ip_list.append(host[h])
    host_list.append(h)
  json.dump(dict_google, outfile, indent=2)

with open('g1.yaml', 'w') as ym_file:
   ym_file.write(yaml.dump(dict_google))


for a, b, c in zip(ip_list,new_ip_list,host_list):
  if a != b: 
    print('[ERROR]', c , 'IP mismatch: OLD', a,' - NEW', b)
```
