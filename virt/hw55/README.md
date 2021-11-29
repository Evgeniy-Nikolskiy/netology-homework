## NETOLOGY HOMEWORK 5.5

### Ответ к задаче 1

* Global гарантирует, что на каждом узле будет работать одна служба. Для Replicated приемлем запуск идентичных задач на рабочем узле.
* Для выбора лидера используется алгоритм согласования Raft. Допускается до (N-1)/2 отказов и требует большинства или кворума (N/2)+1 членов для согласования значений, предложенных для кластера. 
* Overlay Network - подсеть для контейнеров, необходимая для обмена данными расположенных на разных хостах. 
 

### Ответ к задаче 2 и 3

![screen 1](https://raw.githubusercontent.com/Evgeniy-Nikolskiy/netology-homework/main/virt/hw55/assets/2-3.jpg)

### Ответ к задаче 4

![screen 2](https://raw.githubusercontent.com/Evgeniy-Nikolskiy/netology-homework/main/virt/hw55/assets/4.jpg)

Журналы зашифрованы на диске. В докере есть возможность защитить ключ шифрования и требовать ручной разблокировки менеджеров. Эта команда включила автоблокировку на лидере.