## Homework 5.2 ##

### Ответ к заданию 1

* Если не академическим языком, то основными преимуществами является банальный порядок.За инфраструктурой легче следить. Легче поддерживать в стабильном, бесперебойном состоянии.

* Основопологающий принцип - исчерпвающее описание среды, последовательность выполнения необходимых шагов.

### Ответ к заданию 2

* Ansible отличается от других похожих продуктов тем что не требует уствновки клиента на систему и общей простотой в использовании.

* Думаю метод pull обеспечит больше надежности. С точки зрения безопасности запрашивать новую конфигурацию на каждую машину выгодней. Больше шанс пресечь неисправность, чем в случае когда мастер-сервер сам ее раздает на всех.

### Ответ к заданию 3



ANSIBLE
```ansible
ansible 2.9.6
  config file = /etc/ansible/ansible.cfg
  configured module search path = ['/home/vagrant/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/lib/python3/dist-packages/ansible
  executable location = /usr/bin/ansible
  python version = 3.8.10 (default, Sep 28 2021, 16:10:42) [GCC 9.3.0]
```

VAGRANT
```vagrant
Vagrant 2.2.18
```


VirtualBox
```virtualbox
Версия 6.1.26 r145957 (Qt5.6.2)
```

