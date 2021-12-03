## NETOLOGY HOMEWORK 6.2

### Ответ к задаче 1

docker-compose.yaml
```yaml 
version: '2.1'

volumes:
  db_data:
    external: true
  db_backup:
    external: true
services:
  db:
    image: postgres:12
    restart: always
    environment:
      - POSTGRES_PASSWORD=123123
      - POSTGRES_USER=evgen
      - POSTGRES_DB=test_db
    volumes:
      - ./db_data:/etc/postgresql/data
      - ./db_backup:/etc/postgresql/backup
    ports:
      - ${POSTGRES_PORT:-5432}:5432
 ```

### Ответ к задаче 2 и 3

![screen 1](https://raw.githubusercontent.com/Evgeniy-Nikolskiy/netology-homework/main/sql/hw62/assets/21.jpg)

### Ответ к задаче 4

![screen 2](https://raw.githubusercontent.com/Evgeniy-Nikolskiy/netology-homework/main/virt/hw55/assets/4.jpg)

Журналы зашифрованы на диске. В докере есть возможность защитить ключ шифрования и требовать ручной разблокировки менеджеров. Эта команда включила автоблокировку на лидере.
