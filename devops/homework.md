
## ЗАДАНИЕ 1

```bash
a=1  
b=2  
c=a+b			# в этом случае ответ будет a+b - переменной с присваиваются просто символы  
d=$a+$b			# 1+2 - здесь переменной присваиваются значения символов но арифметики не происходит  
e=$(($a+$b))		# 3 - так как синтаксис для арифметики сложения соблюден  
```

## ЗАДАНИЕ 2
  
```bash  
while ((1==1)		# для корректной работы скрипта в конце нужно добавить еще одну ")"  
do  
curl https://localhost:4757  
if (($? != 0))  
then  
date >> curl.log	# здесь вместо ">>" лучше поставить ">" так место на диске не будет заполняться, 
			# а по единственной записи времени можно будет определить упал сервис или нет.
			# А так же узнать когда был последний сбой    
else  
exit  
fi  
done  
```