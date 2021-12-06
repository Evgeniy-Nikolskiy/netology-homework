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

### Ответ к задаче 2

подпункт 1  
![подпункт 1](https://raw.githubusercontent.com/Evgeniy-Nikolskiy/netology-homework/main/sql/hw62/assets/21.jpg)  
подпункт 2  
![подпункт 2](https://raw.githubusercontent.com/Evgeniy-Nikolskiy/netology-homework/main/sql/hw62/assets/22.jpg)  
подпункт 3 и 4   
![подпункт 3](https://raw.githubusercontent.com/Evgeniy-Nikolskiy/netology-homework/main/sql/hw62/assets/23.jpg)  

### Ответ к задаче 3
Количество записей можно отобразить 
![подпункт 1](https://raw.githubusercontent.com/Evgeniy-Nikolskiy/netology-homework/main/sql/hw62/assets/31.jpg) 

![подпункт 2](https://raw.githubusercontent.com/Evgeniy-Nikolskiy/netology-homework/main/sql/hw62/assets/32.jpg) 