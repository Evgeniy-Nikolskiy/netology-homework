## NETOLOGY HOMEWORK 6.4

### Ответ к задаче 1

* вывода списка БД - \l
* подключения к БД - \c[onnect] {[DBNAME|- USER|- HOST|- PORT|-] | conninfo}
* вывода списка таблиц - \dt
* вывода описания содержимого таблиц - select * from orders;
* выхода из psql - \q

### Ответ к задаче 2

select avg_width, attname from pg_stats where tablename = 'orders';  
```
 avg_width | attname   
-----------+---------  
         4 | id  
        16 | title  
         4 | price  
```

### Ответ к задаче 3
```
CREATE TABLE orders_0_499 (
    CHECK (price <= 499 )
) INHERITS (orders);

CREATE TABLE orders_500 (
    CHECK (price > 499 )
) INHERITS (orders);
```
Ручное разбиение можно исключить на уровне проектирования в том случае если есть понимание по какому признаку лучше разбивать таблицу.

### Ответ к задаче 4
Чтобы добавить уникальность в значение столбца можно создать его резервную копию с .sql и открыть как с помощью текстового редактора где прописать уникальность столбца.  
![подпункт 1](https://raw.githubusercontent.com/Evgeniy-Nikolskiy/netology-homework/main/sql/hw64/assets/644.jpg)  

Далее я развернул БД из бэкапа чтобы проверить что база не порушилась и к столбцу title применилась уникальность значений.  
![подпункт 1](https://raw.githubusercontent.com/Evgeniy-Nikolskiy/netology-homework/main/sql/hw64/assets/6442.jpg)