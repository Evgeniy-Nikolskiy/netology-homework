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
Количество записей можно отобразить при вызове всего что есть в таблице  
![подпункт 1](https://raw.githubusercontent.com/Evgeniy-Nikolskiy/netology-homework/main/sql/hw62/assets/31.jpg)   
или отдельной операцией по подсчету  
![подпункт 2](https://raw.githubusercontent.com/Evgeniy-Nikolskiy/netology-homework/main/sql/hw62/assets/32.jpg)   

### Ответ к задаче 4

update clients set orders_id=3 where id_clients=1;  
update clients set orders_id=4 where id_clients=2;  
update clients set orders_id=5 where id_clients=3;  
![подпункт 1](https://raw.githubusercontent.com/Evgeniy-Nikolskiy/netology-homework/main/sql/hw62/assets/41.jpg) 

### Ответ к задаче 5
![подпункт 1](https://raw.githubusercontent.com/Evgeniy-Nikolskiy/netology-homework/main/sql/hw62/assets/51.jpg)  
При выполнении данной команды производится сканирование в указанной таблице. В фильтре отбирается заданное нами условие и на вывод идут все позиции, кроме этих. 

### Ответ к задаче 6
pg_dump -U test_admin_user test_db > ./etc/postgresql/backup/test_db.dump  
docker stop f1a44ce30821  

Далее отредактировал docker-compose.yml удалив из окружения базу и на всякий случай добавил новую цифру к db (хотя можно это и не делать без -d и так было бы придумано новое имя для контейнера)

```yaml
version: '2.1'

volumes:
  db_data:
    external: true
  db_backup:
    external: true
services:
  db_2:
    image: postgres:12
    restart: always
    environment:
        - POSTGRES_PASSWORD=123123
        - POSTGRES_USER=evgen
    volumes:
      - ./db_data:/etc/postgresql/data
      - ./db_backup:/etc/postgresql/backup
    ports:
      - ${POSTGRES_PORT:-5432}:5432
```
Запустил новый docker-compose.yml и проверил, что он пустой зашел в psql и проверил что нет базы test_db:  
docker exec -it d16a16c15151 bash  
psql -U evgen  
\l  
![подпункт 1](https://raw.githubusercontent.com/Evgeniy-Nikolskiy/netology-homework/main/sql/hw62/assets/61.jpg)  
Создал из шаблона пустую БД с таким же названием. Далее командой вытащил из дампа свою базу данных:  
psql -U evgen test_db < ./etc/postgresql/backup/test_db.dump  
![подпункт 2](https://raw.githubusercontent.com/Evgeniy-Nikolskiy/netology-homework/main/sql/hw62/assets/62.jpg)  
Так как в новой БД я не создал заново роли, автоматчески они не добавились. Этого можно было избежать с помощью создания резервной копии утилитой pg_dumpall.
Но чаще всего она применима когда нужно восстановить несколько БД.


