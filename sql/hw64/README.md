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

