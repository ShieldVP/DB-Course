# mongodb-helloworld

Это первое домашнее задание по курсу Баз данных на кафедре СберТеха.

В качестве датасета я выбрал датасет с информацией о покупателях торгового центра. Для некоторого осмысления операций над данными (чтобы не казались уж совсем странными) давайте сделаем дополнительное предположение о том, что это алкомаркет в Америке (выбор конечно мда, но тем не менее).

Сначала я создал коллекцию и добавил в неё один элемент, чтобы коллекция отобразилась в MongoDB Compass.

![alt text](https://github.com/ShieldVP/mongodb-helloworld/blob/main/1.png?raw=true)

Загрузил данные через графические интерфейс.

![alt text](https://github.com/ShieldVP/mongodb-helloworld/blob/main/2.png?raw=true)

Удалил ненужный документ (тоже через графический интерфейс).

![alt text](https://github.com/ShieldVP/mongodb-helloworld/blob/main/3.png?raw=true)

Нашёл своих ровестников.

![alt text](https://github.com/ShieldVP/mongodb-helloworld/blob/main/4.png?raw=true)

Вывел первых двух покупательниц маркета.

![alt text](https://github.com/ShieldVP/mongodb-helloworld/blob/main/5.png?raw=true)

Заметим, что есть только два человека в почтенном возрасте 70 лет, при чём оба мужчины, но как известно мужчины в среднем живут меньше женщин, значит возможно система распознавания лиц отработала с ошибкой.

![alt text](https://github.com/ShieldVP/mongodb-helloworld/blob/main/6.png?raw=true)

Для последующей ручной перепроверки отметим пол этих граждан как "Unsure".

![alt text](https://github.com/ShieldVP/mongodb-helloworld/blob/main/7.png?raw=true)

К нам поступила информация, что а алкомаркет придёт проверка, а в Америке продажа алкоголя лицам младше 21 года запрещена, так что подотрём улики, удалив из списка покупателей всех, кто младше 21.

![alt text](https://github.com/ShieldVP/mongodb-helloworld/blob/main/8.png?raw=true)

К сожалению сам датасет содержал всего 200 записей, поэтому чтобы продемонстрировать эффективность индексов "настакал" уже имеющиеся данные n раз. Посмотрим сколько будет выполняться запрос find без индекса (54ms).

![alt text](https://github.com/ShieldVP/mongodb-helloworld/blob/main/9.png?raw=true)

А с индексом по возрастанию в колонке, по которой отбираем (3ms, т.е. быстрее примерно в 18 раз на таком объёме данных).

![alt text](https://github.com/ShieldVP/mongodb-helloworld/blob/main/10.png?raw=true)
