# ИДЗ 3 по АВС, вариант 36, отчёт
## Заметки
- Программа понимает, что надо импортирвать данные с файла по заданному пути и загрузить её вывод в выходной файл, если в аргументах консоли были введены соответсвующие пути к файлам через пробел
- Реализовано на оценку 8 (возмонжо на 9)
- Если на фото при комментировании кусков кода asm не прописаны неочевидые вещи => они описаны в предыдущих функцях

## Программа на С
#### Импорт необходимых библиотек
- **main.c**
<img width="183" alt="image" src="https://user-images.githubusercontent.com/61533809/204139434-82acb5a5-c5cb-4618-8a03-0d16d3559380.png">

- Библиотека getopt нужна для поля optind 
- Библиотека string нужна для функции strcat (объединение char[])
- Библиотека pthread нужна для измерения времени
- Библиотека stdbool нужна для типа bool

- **allProgrammFucntions.c**
<img width="189" alt="image" src="https://user-images.githubusercontent.com/61533809/204139522-b8c0df1a-bba2-41ea-b86e-fee15b30e986.png">

- Библиотека stdbool нужна для типа bool
- Библиотека pthread нужна для измерения времени
- Библиотека math нужна для подключения мат. функций
- Библиотека stdlib нужна для генерации случайного числа

## Разбор main.c
#### Подключение ссылок на описание основных функций в других файлах
<img width="715" alt="image" src="https://user-images.githubusercontent.com/61533809/204140257-a4418f8c-7d60-4f2d-a555-8c40f70441ea.png">

#### Ввод переменной для считывания с файла, земера времени выполнения всей программы, дальнейшего взаимодействия с программой
<img width="376" alt="image" src="https://user-images.githubusercontent.com/61533809/204140445-1926e587-2c95-4332-9649-4b8f912d4870.png">

#### Получение корректного интревлаа для поиска корня с выводом в консоль, что изначальный интервал некорректный
<img width="1064" alt="image" src="https://user-images.githubusercontent.com/61533809/204140564-0d1419d8-e4b9-4b8d-940f-14dea3cdc4df.png">

#### Проверка кол-ва аргументов, введённых с консоли, для выбора источника ввода и вывода
<img width="1405" alt="image" src="https://user-images.githubusercontent.com/61533809/204140711-19d2d900-7a0b-4f6f-9f81-8c7d336b017d.png">

#### Ввод с файла + проверка на существование файла
<img width="368" alt="image" src="https://user-images.githubusercontent.com/61533809/204140731-e314abec-6f84-405a-8e71-663b5bf0f4cc.png">

#### Считывание способа ввода точности поиска корня
<img width="595" alt="image" src="https://user-images.githubusercontent.com/61533809/204140898-16ccef90-9b31-4f20-9c7b-00a499759f3b.png">

#### Генерация или считывание точности поиска корня (зависит от выбранного способа ввода точности поиска корня)
<img width="476" alt="image" src="https://user-images.githubusercontent.com/61533809/204140974-3a999219-0bbd-4436-b29b-a7049eae9cc0.png">

#### Поиск корня + вывод
<img width="694" alt="image" src="https://user-images.githubusercontent.com/61533809/204141032-5cd4e71e-4984-430d-9bb8-7640171c7eea.png">

#### Вывод в файл + проверка на существование файла
<img width="342" alt="image" src="https://user-images.githubusercontent.com/61533809/204141108-016cee90-edcb-465d-9304-fe4c08348692.png">

#### Получение замеров времени выполнения программы без ввода/вывода и с вводом/выводом + их вывод
<img width="1293" alt="image" src="https://user-images.githubusercontent.com/61533809/204141254-d04a6329-fd05-462c-abc0-09e78d2b114a.png">

## Разбор allProgrammFucntions.c
#### Функция для вычисления значения функции точке
<img width="312" alt="image" src="https://user-images.githubusercontent.com/61533809/204287758-c283f3b1-c0ab-4adb-94ec-c89a5f7e3fc6.png">

#### Функция для поиска корня уравнения методом хорд
<img width="576" alt="image" src="https://user-images.githubusercontent.com/61533809/204288331-baef1863-ef18-454c-b32e-77651f87e81e.png">

#### Функция для замера времени выполнения FindRoot
<img width="404" alt="image" src="https://user-images.githubusercontent.com/61533809/204288761-59996f7c-4b9e-4842-890d-1cb78c2d6135.png">

#### Функция для проверки интервала
<img width="365" alt="image" src="https://user-images.githubusercontent.com/61533809/204288972-a536ad4d-8e65-4d3a-b8b2-698e38273e84.png">

#### Функция для проверки заданной точночти поиска корня
<img width="370" alt="image" src="https://user-images.githubusercontent.com/61533809/204289429-438ff700-dfb7-44cb-a4bb-6aca8de30b56.png">

#### Функция для замера времени выполнения IsErrorCorrect
<img width="359" alt="image" src="https://user-images.githubusercontent.com/61533809/204289814-f752b60e-772d-468f-b1bf-bb40088dcced.png">

#### Функция для получения корректного интревала поиска корня
<img width="417" alt="image" src="https://user-images.githubusercontent.com/61533809/204290624-17c6c98b-31f0-4014-986a-0e00ef3341f3.png">

#### Функция для замера времени выполнения GetCorrectInterval
<img width="396" alt="image" src="https://user-images.githubusercontent.com/61533809/204290787-763b4434-3dbf-469e-aaea-86fbb7799501.png">

#### Функция для получения рандомной точности поиска корня
<img width="587" alt="image" src="https://user-images.githubusercontent.com/61533809/204291051-6207b313-69fc-40d1-ac6d-f557daea401c.png">

#### Функция для замера времени выполнения GetRandomError
<img width="372" alt="image" src="https://user-images.githubusercontent.com/61533809/204291292-cd364d54-039a-475e-8159-21b5625c4708.png">

## Ограничения по входным данным 
#### Точность поиска корня
- минимальное значение: 0.00000001
- максимальное значение: 0.001
#### Список команд доступных при выборе способа введнеия точности поиска корня
- I - ввод с файла / вручную
- G - генерация случайной точночти 
#### Пути входного/выходного файлов
- в пути файлов не должно содержаться пробелов

## Разработка тестов
- 1 тест (на проверку корректности работы программы с режимом ручного ввода)
  - Входные данные: I; 0.0001
  - Выходные данные: в файле tests/from_console/1.out
- 2 тест (проверка случайности генерирования точночти поиска корня)
  - Входные данные: G
  - Выходные данные: в файле tests/from_console/2.out
- 3 тест (на проверку и реагирование программой на некорректный ввод режима точночти поиска корня)
  - Входные данные: Sldjf
  - Выходные данные: в файле tests/from_console/3.out
- 4 тест (на проверку и реагирование программой на некорректный ввод точночти поиска корня)
  - Входные данные: I; 10
  - Выходные данные: в файле tests/from_console/4.out
- 5 тест (на чтение данных с файла и вывод в заданный файл)
  - Входные данные (в командной строке): ~/input.txt ~/output.txt
  - Выходные данные: в ~/output.txt
  - Входные данные (в input.txt): I; 0.0001  
- 6 тест (на проверку кол-ва аргументов в командной строке)
  - Входные данные (в командной строке): ~/input.txt
  - Выходные данные: в файле tests/from_console/6.out
  - Входные данные (в input.txt): I; 0.0001
- 7 тест (на проверку существования входного файла)
  - Входные данные (в командной строке): input.txt
  - Выходные данные: в файле tests/from_file/7.out
- 8 тест (на проверку существования выходного файла / его создания в случае несуществования)
  - Входные данные (в командной строке): input.txt
  - Выходные данные: в файле output.txt

## Тестирование программы
- 1 тест
<img width="970" alt="image" src="https://user-images.githubusercontent.com/61533809/204309249-6764562d-d74f-4625-a66b-29b83ece5c21.png">
=> ок

- 2 тест
<img width="930" alt="image" src="https://user-images.githubusercontent.com/61533809/204310288-8e2a98e4-ecbf-4af9-9548-f9c583e97341.png">
=> ок

- 3 тест
<img width="919" alt="image" src="https://user-images.githubusercontent.com/61533809/204314029-2128573f-d495-4ac4-a769-637ade8ba131.png">
=> ок

- 4 тест
<img width="1189" alt="image" src="https://user-images.githubusercontent.com/61533809/204318204-2f506aee-3f77-4326-b65b-f0496a3b1641.png">
=> ок

- 5 тест
<img width="944" alt="image" src="https://user-images.githubusercontent.com/61533809/204321113-2794b134-21b6-42ef-b72f-f0b13d452288.png">
<img width="897" alt="image" src="https://user-images.githubusercontent.com/61533809/204327077-5fa4d4fb-9338-4aa8-8740-60c693f82955.png">
=> ок

- 6 тест
<img width="1283" alt="image" src="https://user-images.githubusercontent.com/61533809/204327714-37ddab47-1195-44b7-9b10-2208c19c0e36.png">
=> ок

- 7 тест
<img width="926" alt="image" src="https://user-images.githubusercontent.com/61533809/204332094-c4c95e54-3f48-4bbc-800d-d6bb195a6c4d.png">
=> ок

- 8 тест
<img width="699" alt="image" src="https://user-images.githubusercontent.com/61533809/204331219-1edd57bb-2cb0-47f4-afd7-466e9b484e54.png">
<img width="912" alt="image" src="https://user-images.githubusercontent.com/61533809/204331030-c92a2a85-448c-4e35-94eb-b0b3d729cbc3.png">
<img width="896" alt="image" src="https://user-images.githubusercontent.com/61533809/204331491-351e8cd4-6cc6-452f-89d2-adcafd35c7cc.png">

## Корректирование программы на asm
#### Текст программы на asm после компиляции на С
Вы можете увидеть исходные asm файлы после компиляции на С в processing_files/asm с пометкой "(исходный)"
#### Удаление ненужного кода
- Удалим название файла
- **main.s**

Было:

<img width="753" alt="image" src="https://user-images.githubusercontent.com/61533809/204334727-5656a43d-b364-4eda-b568-e7b0617ba5c0.png">

Стало:

<img width="376" alt="image" src="https://user-images.githubusercontent.com/61533809/204335783-92a95f6c-eccd-4fd8-97f0-2618537184b4.png">

- **allProgrammFunctions.s**

Было:

<img width="304" alt="image" src="https://user-images.githubusercontent.com/61533809/204336110-43ce4d5c-35b6-47ef-8889-1807d267fe7c.png">

Стало:

<img width="304" alt="image" src="https://user-images.githubusercontent.com/61533809/204336216-3106eb63-5637-41d0-a48d-3d8c9661420e.png">

- Удаление со всех функций enbr64
- **main.s**

Было:

<img width="368" alt="image" src="https://user-images.githubusercontent.com/61533809/204336348-0ebdd9cd-27d2-42c6-b95c-120f45f2ddaf.png">

Стало:

<img width="432" alt="image" src="https://user-images.githubusercontent.com/61533809/204336634-9b6e7338-cc3f-4b63-9216-9b425f1bd496.png">

- **allProgrammFunctions.s**

Было:

<img width="333" alt="image" src="https://user-images.githubusercontent.com/61533809/204336751-d4dc793c-62c7-43f1-a98a-df928e26f435.png">

<img width="310" alt="image" src="https://user-images.githubusercontent.com/61533809/204336851-868c4788-e8dd-4738-b200-0c6b9f20f944.png">

<img width="293" alt="image" src="https://user-images.githubusercontent.com/61533809/204336954-5e3eff82-2021-40bb-bec0-749d68a6f468.png">

<img width="373" alt="image" src="https://user-images.githubusercontent.com/61533809/204337055-26ed965d-ead6-4bff-b854-2cfa393dcef5.png">

<img width="289" alt="image" src="https://user-images.githubusercontent.com/61533809/204337128-3f3f2c36-fdfc-4cb4-b69b-c1aedcd5ea51.png">

<img width="350" alt="image" src="https://user-images.githubusercontent.com/61533809/204337331-a4b49d03-6426-4665-8293-2b54faca9aa1.png">

<img width="312" alt="image" src="https://user-images.githubusercontent.com/61533809/204337412-fdadd697-747e-4855-865b-c787002530b5.png">
 
<img width="370" alt="image" src="https://user-images.githubusercontent.com/61533809/204337521-40810006-bf6f-4cad-9a37-a299a17b5422.png">

<img width="332" alt="image" src="https://user-images.githubusercontent.com/61533809/204337619-b62e60f8-5dfa-470c-8b36-31c71f828e53.png">

<img width="351" alt="image" src="https://user-images.githubusercontent.com/61533809/204337727-96f6a3db-e67f-44e3-a944-f72f8d9fca73.png">

Стало:

<img width="273" alt="image" src="https://user-images.githubusercontent.com/61533809/204337904-b2c746a2-38dd-4b1d-bfe1-75280bdca0f4.png">

<img width="277" alt="image" src="https://user-images.githubusercontent.com/61533809/204337994-cc860890-8098-416b-9972-a53cf68560cc.png">

<img width="290" alt="image" src="https://user-images.githubusercontent.com/61533809/204338077-30c718e9-7ff4-476a-a994-bcda6cba90f9.png">

<img width="293" alt="image" src="https://user-images.githubusercontent.com/61533809/204338129-38570cca-f8c2-4832-adf5-a2418ca7b194.png">

<img width="326" alt="image" src="https://user-images.githubusercontent.com/61533809/204338196-bd13fefd-364b-4fcc-8305-46265371be5f.png">

<img width="297" alt="image" src="https://user-images.githubusercontent.com/61533809/204338289-f0868f7f-88d5-461b-8abb-5c831405dcd5.png">

<img width="300" alt="image" src="https://user-images.githubusercontent.com/61533809/204338359-0f9e3e7c-e08e-45bc-b84a-276cbb826e41.png">

<img width="319" alt="image" src="https://user-images.githubusercontent.com/61533809/204338430-b6309f56-5715-4a64-9390-7a9f9d650076.png">

<img width="378" alt="image" src="https://user-images.githubusercontent.com/61533809/204338497-aff9e682-3958-42d0-8372-0dcf63c6a4ee.png">

<img width="344" alt="image" src="https://user-images.githubusercontent.com/61533809/204338563-3d823d79-ff6b-474d-b144-74447d9ce364.png">

- Удаление кода, сформированного gcc
- **main.s**

Было:

<img width="444" alt="image" src="https://user-images.githubusercontent.com/61533809/204338725-947f69f8-73ac-47e1-a3e7-031f7b4c7eeb.png">

Стало:

<img width="225" alt="image" src="https://user-images.githubusercontent.com/61533809/204338840-6e699d37-5fd1-4cc4-addf-565840d12f12.png">

- **allProgrammFunctions.s**

Было:

<img width="521" alt="image" src="https://user-images.githubusercontent.com/61533809/204338914-c247a636-9754-44b9-b446-729fe5f45904.png">

Стало:

<img width="211" alt="image" src="https://user-images.githubusercontent.com/61533809/204339038-eba95df1-c8cd-412e-ae06-02d9a1a6e80f.png">

- Удаление кода о размерах функций
- **allProgrammFunctions.s**

Было:

<img width="333" alt="image" src="https://user-images.githubusercontent.com/61533809/204339572-d9c4a184-c08e-4f84-aa99-2ee60f839f7e.png">

<img width="427" alt="image" src="https://user-images.githubusercontent.com/61533809/204339756-080b95d2-5816-4e8b-90d0-203804a70044.png">

<img width="496" alt="image" src="https://user-images.githubusercontent.com/61533809/204339985-e14fec24-c8c2-4a96-8fcf-a4785cd37ded.png">

<img width="404" alt="image" src="https://user-images.githubusercontent.com/61533809/204342103-6341cfd7-0d69-4b75-9b19-1f3f2b0d0d22.png">
 
<img width="561" alt="image" src="https://user-images.githubusercontent.com/61533809/204342278-525510a9-ad3f-4f0b-8f6a-4ef7e6f6235e.png">

<img width="429" alt="image" src="https://user-images.githubusercontent.com/61533809/204342429-de4bdefb-e602-4e93-9450-54da81d8bc0d.png">

<img width="638" alt="image" src="https://user-images.githubusercontent.com/61533809/204342578-2bd0f54a-79be-4130-9c3b-80fa84732a89.png">

<img width="488" alt="image" src="https://user-images.githubusercontent.com/61533809/204342721-18680482-664b-4f49-8a8d-49c396536426.png">

<img width="500" alt="image" src="https://user-images.githubusercontent.com/61533809/204342867-c4e6c3d4-3ee4-42c2-afaa-059e65bad3c5.png">

Стало:

<img width="324" alt="image" src="https://user-images.githubusercontent.com/61533809/204339654-3e386e0e-4a81-4cdc-8484-e0ef8d7f8684.png">

<img width="376" alt="image" src="https://user-images.githubusercontent.com/61533809/204339920-e7ac2eb0-1237-40c9-ab0f-267c2338e1ab.png">

<img width="470" alt="image" src="https://user-images.githubusercontent.com/61533809/204340058-3fccf72a-5a8d-44b7-aec3-3465b616526c.png">

<img width="391" alt="image" src="https://user-images.githubusercontent.com/61533809/204342217-1d60605a-688b-4093-bb0c-350e4b4b5d94.png">

<img width="420" alt="image" src="https://user-images.githubusercontent.com/61533809/204342359-48c69c9d-7791-4d3b-845a-0a79b45b2a5d.png">

<img width="450" alt="image" src="https://user-images.githubusercontent.com/61533809/204342516-1d33086e-04d8-43b7-8485-3f2eb5d5031b.png">

<img width="420" alt="image" src="https://user-images.githubusercontent.com/61533809/204342642-4859c4c2-716b-4a17-b3fd-00b4d404b0e1.png">

<img width="475" alt="image" src="https://user-images.githubusercontent.com/61533809/204342786-16a70132-a627-4266-8ff1-564f9a9e87f1.png">

<img width="383" alt="image" src="https://user-images.githubusercontent.com/61533809/204342930-43b12d1f-a227-4ea3-81a7-9622096658f3.png">

#### Комментирование кода
- **main.s**
- main
<img width="760" alt="image" src="https://user-images.githubusercontent.com/61533809/204367087-5a875cfb-bb0b-45f2-ab44-5791d131571b.png">

- .LC0
<img width="639" alt="image" src="https://user-images.githubusercontent.com/61533809/204367453-f8820f17-71aa-40c7-9cb7-ab73e5da16a3.png">

- .LC1
<img width="748" alt="image" src="https://user-images.githubusercontent.com/61533809/204367728-8f0083fe-732f-4785-b964-6acd2681812f.png">

- .L2
<img width="650" alt="image" src="https://user-images.githubusercontent.com/61533809/204369348-9daddfe7-3476-441c-aef9-34a7ed571b28.png">

- .L3
<img width="720" alt="image" src="https://user-images.githubusercontent.com/61533809/204370607-698e6179-d5d4-4d16-9f52-04e305620286.png">

- .L5
<img width="707" alt="image" src="https://user-images.githubusercontent.com/61533809/204371701-45c795c9-5d7d-43e8-b03f-02a151271c2d.png">

- .L6
<img width="467" alt="image" src="https://user-images.githubusercontent.com/61533809/204373547-bab16966-e522-4672-91f4-ffc9cbc97306.png">

- .L7
<img width="697" alt="image" src="https://user-images.githubusercontent.com/61533809/204376029-19806005-c5cf-4f40-bbc0-71acb766dc48.png">

- .L8
<img width="697" alt="image" src="https://user-images.githubusercontent.com/61533809/204376232-5518ee1e-2487-4d84-9543-a90e3d9546ca.png">

- .L9
<img width="552" alt="image" src="https://user-images.githubusercontent.com/61533809/204376443-51de1ab0-35b5-4b6c-ae4f-4014eb43b8a8.png">

- .L10
<img width="468" alt="image" src="https://user-images.githubusercontent.com/61533809/204378536-84eb8de4-8ab8-4ac9-9179-40509f0e1ef2.png">

- .L12
<img width="673" alt="image" src="https://user-images.githubusercontent.com/61533809/204378796-f4f8612f-ba66-4975-80aa-328f2028f5e1.png">

- .L13
<img width="536" alt="image" src="https://user-images.githubusercontent.com/61533809/204379650-5841efcd-31e6-4b6d-aaf8-887afc205777.png">

- .L14
<img width="706" alt="image" src="https://user-images.githubusercontent.com/61533809/204380493-991efffd-f1c0-4f1f-b65f-e4f0d6e224ac.png">

- .L15
<img width="644" alt="image" src="https://user-images.githubusercontent.com/61533809/204381613-f130928c-8b8e-4fec-8055-c29089ec8b04.png">

- .L16
<img width="547" alt="image" src="https://user-images.githubusercontent.com/61533809/204382415-f287834b-8d43-43f9-b15d-75850720f559.png">

- .L17
<img width="614" alt="image" src="https://user-images.githubusercontent.com/61533809/204383936-208314f8-ace4-4e80-abe8-de9b2ae24a5e.png">

- .L18
<img width="663" alt="image" src="https://user-images.githubusercontent.com/61533809/204384425-a67f3021-f89b-41a5-9b30-0566a0dbae27.png">

- .L19
<img width="672" alt="image" src="https://user-images.githubusercontent.com/61533809/204385309-de8b4859-6f4a-422f-bea7-16f7a070b7f7.png">

- .L20
<img width="581" alt="image" src="https://user-images.githubusercontent.com/61533809/204386649-b7012608-2d90-459c-86c5-5b081e0245db.png">

- .L21
<img width="1321" alt="image" src="https://user-images.githubusercontent.com/61533809/204388958-6a8fe3b1-ec4a-4b86-baca-a0ce5121d500.png">

- .L22
<img width="442" alt="image" src="https://user-images.githubusercontent.com/61533809/204390310-271ea66b-d0c2-4b4f-bf2d-efe79ed56ec1.png">

- .L23
<img width="680" alt="image" src="https://user-images.githubusercontent.com/61533809/204390788-efac9509-988a-43a4-8e0c-81b1e1c21ef9.png">
<img width="501" alt="image" src="https://user-images.githubusercontent.com/61533809/204390945-2122de72-7947-492e-9c44-b0f9d7ce34e1.png">

- .L24
<img width="250" alt="image" src="https://user-images.githubusercontent.com/61533809/204391183-e7fd8d2f-5c9d-4e88-a5ac-9db3b250e2b0.png">

- .L25
<img width="469" alt="image" src="https://user-images.githubusercontent.com/61533809/204391505-7e0ad558-5c2e-4f51-9115-c24968f23d4c.png">

- **allProgrammFunctions.s**
- F
<img width="547" alt="image" src="https://user-images.githubusercontent.com/61533809/204402967-9ad4c0cf-0a4e-4669-8c6d-e84107caabdb.png">


#### Оптимизация кода
- **main.s**
- удаление лишних присваиваний

Было:

<img width="699" alt="image" src="https://user-images.githubusercontent.com/61533809/204393238-2a74fd03-0096-4555-9da0-19c9fc045ecf.png">

Стало:

<img width="523" alt="image" src="https://user-images.githubusercontent.com/61533809/204393484-1fe4a5c4-0ba2-4d61-b730-55c323a480c1.png">

Было:

<img width="581" alt="image" src="https://user-images.githubusercontent.com/61533809/204394294-39de67a6-f7c5-4914-95d7-b8da31117824.png">

Стало:

<img width="533" alt="image" src="https://user-images.githubusercontent.com/61533809/204394450-e74d11c9-87a5-4a1c-86ed-888b6b0186fd.png">

Было:

<img width="577" alt="image" src="https://user-images.githubusercontent.com/61533809/204394620-505f4776-4474-48a5-a289-6aa4ddd01589.png">

Стало:

<img width="468" alt="image" src="https://user-images.githubusercontent.com/61533809/204394791-daed1414-d515-461d-9c49-8e5c4517d238.png">

Было:

<img width="553" alt="image" src="https://user-images.githubusercontent.com/61533809/204394918-4d988565-3e24-4a4e-bfa6-59b334f2caee.png">

Стало:

<img width="557" alt="image" src="https://user-images.githubusercontent.com/61533809/204395203-29b81998-5733-4161-a627-474769987b6e.png">

Было:

<img width="550" alt="image" src="https://user-images.githubusercontent.com/61533809/204395288-24229ab6-7778-4e41-a27e-8037241a81ff.png">

Стало:

<img width="638" alt="image" src="https://user-images.githubusercontent.com/61533809/204395497-8edf8c3b-f7ff-4065-9ad9-bdb712ee7c5a.png">

Было:

<img width="599" alt="image" src="https://user-images.githubusercontent.com/61533809/204395609-c9aeff53-4101-4c56-89a0-e00dcdf75f76.png">

Cтало:

<img width="440" alt="image" src="https://user-images.githubusercontent.com/61533809/204396138-fe667d2a-a408-42e2-bff7-875c2ed02475.png">

Было:

<img width="487" alt="image" src="https://user-images.githubusercontent.com/61533809/204396203-2df67bb1-6763-4478-bb85-37a3c327e9a9.png">

Стало:

<img width="417" alt="image" src="https://user-images.githubusercontent.com/61533809/204396379-6ba21208-e90f-4f6e-bf9b-5b7f8a636b5b.png">

Было:

<img width="752" alt="image" src="https://user-images.githubusercontent.com/61533809/204396567-eec7df97-1086-4113-ad4c-b04553daf547.png">

Стало:

<img width="746" alt="image" src="https://user-images.githubusercontent.com/61533809/204396738-8e1ffd36-dfe7-4169-825f-f6d48402616f.png">

- **allProgrammFunctions.s**

- Оптимизации компилятора
- **main.s**
<img width="698" alt="image" src="https://user-images.githubusercontent.com/61533809/204397118-a2a03f6b-31ae-4c61-8356-0e7c2d380174.png">

- Замена переменных, занимающих память, на регистр
- **main.s**

Сделаем так, чтобы переменная index хранилась с помощью регистра так, как она используется только для входных данных в цикле. Она хранилась в -44[rbp], переметим её в r12d

Было:

<img width="505" alt="image" src="https://user-images.githubusercontent.com/61533809/204397533-5e943d15-ed2b-4175-8386-1f8c1de8c0ad.png">

<img width="624" alt="image" src="https://user-images.githubusercontent.com/61533809/204397617-20aaad9f-af69-4396-b24d-5b43bc16fb4b.png">

<img width="691" alt="image" src="https://user-images.githubusercontent.com/61533809/204397658-518d0826-a4a3-43c7-b19d-b4644874a810.png">

<img width="463" alt="image" src="https://user-images.githubusercontent.com/61533809/204397710-7dc6271b-68db-4c03-a787-25bd74c8b220.png">

<img width="556" alt="image" src="https://user-images.githubusercontent.com/61533809/204397776-294383a5-91c3-4fa3-8120-a4bb5a523ef6.png">

Стало:

<img width="740" alt="image" src="https://user-images.githubusercontent.com/61533809/204398267-b0e7a531-5840-4df6-a75f-9a1789ef522f.png">

<img width="557" alt="image" src="https://user-images.githubusercontent.com/61533809/204398315-a325588b-c7ef-4c62-b3ec-7813a86db6c9.png">

<img width="659" alt="image" src="https://user-images.githubusercontent.com/61533809/204398369-38661eaa-63c6-414b-98cf-3bf6a7bb5de1.png">

<img width="432" alt="image" src="https://user-images.githubusercontent.com/61533809/204398445-801982ca-bade-4bfb-954c-432cbee510ad.png">

<img width="502" alt="image" src="https://user-images.githubusercontent.com/61533809/204398584-8773fde4-e379-4325-bd66-a271dc62467d.png">

Сделаем так, чтобы аргумент argc хранилась с помощью регистра так, как она используется только для входных данных в цикле. Она хранилась в -1956[rbp], переметим её в r13d

Было:

<img width="488" alt="image" src="https://user-images.githubusercontent.com/61533809/204401159-a1f32e1f-ad2f-4e3c-9c5f-52c466fef1f0.png">

<img width="546" alt="image" src="https://user-images.githubusercontent.com/61533809/204401210-f1da1ef3-3fba-4197-9c52-9e58e85c3376.png">

<img width="418" alt="image" src="https://user-images.githubusercontent.com/61533809/204401260-0e8d3e3e-7b90-49bb-b31c-9d08c98236c3.png">

Стало:

<img width="532" alt="image" src="https://user-images.githubusercontent.com/61533809/204401605-1cbbf484-e365-4761-8ff2-4b949e5841b4.png">

<img width="745" alt="image" src="https://user-images.githubusercontent.com/61533809/204401670-b15ffc31-4972-4afd-8db8-c7ca288793ad.png">

<img width="549" alt="image" src="https://user-images.githubusercontent.com/61533809/204401726-e3ca8103-e96c-44d4-a948-a994b628cc7e.png">
