## NETOLOGY HOMEWORK 6.5

### Ответ к задаче 1

[Dockerfile](Dockerfile)  
[DockerHub](https://hub.docker.com/repository/docker/weiruk/elastic_netology)
```
curl http://localhost:9200/
{
  "name" : "netology_test",
  "cluster_name" : "my-elastic",
  "cluster_uuid" : "_na_",
  "version" : {
    "number" : "7.16.1",
    "build_flavor" : "default",
    "build_type" : "tar",
    "build_hash" : "5b38441b16b1ebb16a27c107a4c3865776e20c53",
    "build_date" : "2021-12-11T00:29:38.865893768Z",
    "build_snapshot" : false,
    "lucene_version" : "8.10.1",
    "minimum_wire_compatibility_version" : "6.8.0",
    "minimum_index_compatibility_version" : "6.0.0-beta1"
  },
  "tagline" : "You Know, for Search"
}
```

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