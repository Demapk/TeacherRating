INSERT INTO course(id, course_year, title) VALUES (1, 'BACHELOR_FIRST', '1 курс');
INSERT INTO course(id, course_year, title) VALUES (2, 'BACHELOR_SECOND', '2 курс');
INSERT INTO course(id, course_year, title) VALUES (3, 'BACHELOR_THIRD', '3 курс');
INSERT INTO course(id, course_year, title) VALUES (4, 'BACHELOR_FOURTH', '4 курс');

INSERT INTO student_group VALUES (1, '11-701', 1);
INSERT INTO student_group VALUES (2, '11-702', 1);
INSERT INTO student_group VALUES (3, '11-703', 1);
INSERT INTO student_group VALUES (4, '11-704', 1);
INSERT INTO student_group VALUES (5, '11-705', 1);
INSERT INTO student_group VALUES (6, '11-706', 1);
INSERT INTO student_group VALUES (7, '11-707', 1);
INSERT INTO student_group VALUES (8, '11-708', 1);
INSERT INTO student_group VALUES (9, '11-601', 2);
INSERT INTO student_group VALUES (10, '11-602', 2);
INSERT INTO student_group VALUES (11, '11-603', 2);
INSERT INTO student_group VALUES (12, '11-604', 2);
INSERT INTO student_group VALUES (13, '11-605', 2);
INSERT INTO student_group VALUES (14, '11-606', 2);
INSERT INTO student_group VALUES (15, '11-607', 2);
INSERT INTO student_group VALUES (16, '11-608', 2);
INSERT INTO student_group VALUES (17, '11-501', 3);
INSERT INTO student_group VALUES (18, '11-502', 3);
INSERT INTO student_group VALUES (19, '11-503', 3);
INSERT INTO student_group VALUES (20, '11-504', 3);
INSERT INTO student_group VALUES (21, '11-505', 3);
INSERT INTO student_group VALUES (22, '11-506', 3);
INSERT INTO student_group VALUES (23, '11-507', 3);
INSERT INTO student_group VALUES (24, '11-508', 3);
INSERT INTO student_group VALUES (25, '11-401', 4);
INSERT INTO student_group VALUES (26, '11-402', 4);
INSERT INTO student_group VALUES (27, '11-403', 4);
INSERT INTO student_group VALUES (28, '11-404', 4);
INSERT INTO student_group VALUES (29, '11-405', 4);
INSERT INTO student_group VALUES (30, '11-406', 4);
INSERT INTO student_group VALUES (31, '11-407', 4);
INSERT INTO student_group VALUES (32, '11-408', 4);

INSERT INTO discipline(id, title, type, course_id) VALUES (1, 'Иностранный язык', 'PRACTICE', 1);
INSERT INTO discipline(id, title, type, course_id) VALUES (2, 'Информатика', 'PRACTICE', 1);
INSERT INTO discipline(id, title, type, course_id) VALUES (3, 'Информатика', 'LECTURE', 1);
INSERT INTO discipline(id, title, type, course_id) VALUES (4, 'Дискретная математика', 'PRACTICE', 1);
INSERT INTO discipline(id, title, type, course_id) VALUES (5, 'Дискретная математика', 'LECTURE', 1);
INSERT INTO discipline(id, title, type, course_id) VALUES (6, 'Алгебра и геометрия', 'PRACTICE', 1);
INSERT INTO discipline(id, title, type, course_id) VALUES (7, 'Алгебра и геометрия', 'LECTURE', 1);
INSERT INTO discipline(id, title, type, course_id) VALUES (8, 'Русский язык и культура речи', 'PRACTICE', 1);
INSERT INTO discipline(id, title, type, course_id) VALUES (9, 'Русский язык и культура речи', 'LECTURE', 1);
INSERT INTO discipline(id, title, type, course_id) VALUES (10, 'Алгоритмы и структуры данных', 'PRACTICE', 1);
INSERT INTO discipline(id, title, type, course_id) VALUES (11, 'Алгоритмы и структуры данных', 'LECTURE', 1);
INSERT INTO discipline(id, title, type, course_id) VALUES (68, 'Математический анализ', 'PRACTICE', 1);
INSERT INTO discipline(id, title, type, course_id) VALUES (69, 'Математический анализ', 'LECTURE', 1);

INSERT INTO discipline(id, title, type, course_id) VALUES (12, 'Вычислительные системы, сети и телекоммуникации', 'PRACTICE', 2);
INSERT INTO discipline(id, title, type, course_id) VALUES (13, 'Вычислительные системы, сети и телекоммуникации', 'LECTURE', 2);
INSERT INTO discipline(id, title, type, course_id) VALUES (14, 'Информатика', 'PRACTICE', 2);
INSERT INTO discipline(id, title, type, course_id) VALUES (15, 'Информатика', 'LECTURE', 2);
INSERT INTO discipline(id, title, type, course_id) VALUES (16, 'Иностранный язык', 'PRACTICE', 2);
INSERT INTO discipline(id, title, type, course_id) VALUES (17, 'Теория вероятности и математическая статистика', 'PRACTICE', 2);
INSERT INTO discipline(id, title, type, course_id) VALUES (18, 'Теория вероятности и математическая статистика', 'LECTURE', 2);
INSERT INTO discipline(id, title, type, course_id) VALUES (19, 'Курс по выбору: Интернет программирование Django', 'PRACTICE', 2);
INSERT INTO discipline(id, title, type, course_id) VALUES (20, 'Курс по выбору: Ruby', 'PRACTICE', 2);
INSERT INTO discipline(id, title, type, course_id) VALUES (21, 'Курс по выбору: PHP', 'PRACTICE', 2);
INSERT INTO discipline(id, title, type, course_id) VALUES (22, 'Курс по выбору: Разработка мобильных приложений', 'PRACTICE', 2);
INSERT INTO discipline(id, title, type, course_id) VALUES (23, 'Курс по выбору: Визуализация данных', 'PRACTICE', 2);
INSERT INTO discipline(id, title, type, course_id) VALUES (24, 'Курс по выбору: Программирование на C++', 'PRACTICE', 2);
INSERT INTO discipline(id, title, type, course_id) VALUES (25, 'Курс по выбору: Разработка корпоративных приложений: Net', 'PRACTICE', 2);
INSERT INTO discipline(id, title, type, course_id) VALUES (70, 'Курс по выбору: Разработка корпоративных приложений: Java', 'PRACTICE', 2);
INSERT INTO discipline(id, title, type, course_id) VALUES (26, 'Курс по выбору: Цифровая живопись', 'PRACTICE', 2);
INSERT INTO discipline(id, title, type, course_id) VALUES (27, 'Введение в робототехнику', 'PRACTICE', 2);
INSERT INTO discipline(id, title, type, course_id) VALUES (29, 'Введение в искусственный интеллект', 'PRACTICE', 2);
INSERT INTO discipline(id, title, type, course_id) VALUES (31, 'Методы оптимизации', 'PRACTICE', 2);

INSERT INTO discipline(id, title, type, course_id) VALUES (33, 'Управление проектами', 'PRACTICE', 3);
INSERT INTO discipline(id, title, type, course_id) VALUES (34, 'Управление проектами', 'LECTURE', 3);
INSERT INTO discipline(id, title, type, course_id) VALUES (35, 'Информационная безопасность', 'PRACTICE', 3);
INSERT INTO discipline(id, title, type, course_id) VALUES (36, 'Информационная безопасность', 'LECTURE', 3);
INSERT INTO discipline(id, title, type, course_id) VALUES (37, 'Параллельное программирование', 'PRACTICE', 3);
INSERT INTO discipline(id, title, type, course_id) VALUES (38, 'Параллельное программирование', 'LECTURE', 3);
INSERT INTO discipline(id, title, type, course_id) VALUES (39, 'Программная инженерия', 'PRACTICE', 3);
INSERT INTO discipline(id, title, type, course_id) VALUES (40, 'Программная инженерия', 'LECTURE', 3);
INSERT INTO discipline(id, title, type, course_id) VALUES (41, 'Основы правоведения и противодействия коррупции', 'PRACTICE', 3);
INSERT INTO discipline(id, title, type, course_id) VALUES (42, 'Основы правоведения и противодействия коррупции', 'LECTURE', 3);
INSERT INTO discipline(id, title, type, course_id) VALUES (43, 'Основы предпринимательства', 'PRACTICE', 3);
INSERT INTO discipline(id, title, type, course_id) VALUES (44, 'Основы предпринимательства', 'LECTURE', 3);
INSERT INTO discipline(id, title, type, course_id) VALUES (45, 'Эффективная разработка', 'PRACTICE', 3);
INSERT INTO discipline(id, title, type, course_id) VALUES (46, 'Скриптинг', 'PRACTICE', 3);
INSERT INTO discipline(id, title, type, course_id) VALUES (47, 'Тхенологии Net', 'PRACTICE', 3);
INSERT INTO discipline(id, title, type, course_id) VALUES (48, 'Введение в теорию и практику анимации', 'PRACTICE', 3);
INSERT INTO discipline(id, title, type, course_id) VALUES (49, 'Проектирование веб-интерфейсов', 'PRACTICE', 3);
INSERT INTO discipline(id, title, type, course_id) VALUES (50, 'Биоинформатика', 'PRACTICE', 3);
INSERT INTO discipline(id, title, type, course_id) VALUES (51, 'Вычислительная статистика', 'PRACTICE', 3);
INSERT INTO discipline(id, title, type, course_id) VALUES (52, 'Обработка текстов на естественном языке', 'PRACTICE', 3);
INSERT INTO discipline(id, title, type, course_id) VALUES (53, 'Введение в исскуственный интеллект', 'PRACTICE', 3);
INSERT INTO discipline(id, title, type, course_id) VALUES (54, 'Физика', 'PRACTICE', 3);

INSERT INTO discipline(id, title, type, course_id) VALUES (55, 'Методология научных исследований', 'PRACTICE', 4);
INSERT INTO discipline(id, title, type, course_id) VALUES (56, 'Методология научных исследований', 'LECTURE', 4);
INSERT INTO discipline(id, title, type, course_id) VALUES (57, 'Управление качеством разработки информационных систем', 'PRACTICE', 4);
INSERT INTO discipline(id, title, type, course_id) VALUES (58, 'Управление качеством разработки информационных систем', 'LECTURE', 4);
INSERT INTO discipline(id, title, type, course_id) VALUES (59, 'Основы информационного поиска', 'PRACTICE', 4);
INSERT INTO discipline(id, title, type, course_id) VALUES (60, 'Основы информационного поиска', 'LECTURE', 4);
INSERT INTO discipline(id, title, type, course_id) VALUES (61, 'Кроссплатформенное прикладное программирование', 'PRACTICE', 4);
INSERT INTO discipline(id, title, type, course_id) VALUES (62, 'Кроссплатформенное прикладное программирование', 'LECTURE', 4);
INSERT INTO discipline(id, title, type, course_id) VALUES (63, 'Мобильные информационные системы', 'PRACTICE', 4);
INSERT INTO discipline(id, title, type, course_id) VALUES (64, 'Интернет вещей', 'PRACTICE', 4);
INSERT INTO discipline(id, title, type, course_id) VALUES (65, 'Механизмы защиты удаленного доступа', 'PRACTICE', 4);
INSERT INTO discipline(id, title, type, course_id) VALUES (66, 'Проектирование человеко-машинных интерфейсов', 'PRACTICE', 4);
INSERT INTO discipline(id, title, type, course_id) VALUES (67, 'Аспектно-ориентированное проектирование и разработка', 'PRACTICE', 4);

INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (1, 'Макаев', 'Х', 'Ф');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (2, 'Баранова', 'А', 'Р');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (3, 'Сигачева', 'Н', 'А');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (4, 'Мельникова', 'О', 'К');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (5, 'Саляхова', 'Г', 'И');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (6, 'Исмагилова', 'Г', 'К');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (7, 'Ильин', 'С', 'Н');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (8, 'Шамсутдинова', 'К', 'С');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (9, 'Арсланов', 'Марат', 'Мирзаевич');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (10, 'Корнеева', 'Н', 'Н');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (11, 'Палеха', 'Е', 'С');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (12, 'Зубков', 'М', 'В');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (13, 'Ференец', 'А', 'А');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (14, 'Марченко', 'А', 'А');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (15, 'Салимов', 'Р', 'Ф');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (16, 'Салимов', 'Фарид', 'Ибрагимович');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (17, 'Мартынова', 'Е', 'В');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (18, 'Абрамский', 'М', 'М');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (19, 'Малакаев', 'М', 'С');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (20, 'Переточкина', 'С', 'М');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (21, 'Зубкова', 'С', 'К');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (22, 'Спиридонов', 'А', 'В');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (23, 'Махмутова', 'Д', 'И');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (24, 'Сидиков', 'М', 'Р');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (25, 'Шамсутдинова', 'Э', 'Х');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (26, 'Широкова', 'Е', 'А');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (27, 'Хайруллин', 'А', 'Ф');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (28, 'Кац', 'Д', 'Б');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (29, 'Шурыгин', 'В', 'В');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (30, 'Муллагалиев', 'Э', 'А');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (31, 'Тапкин', 'Д', 'Т');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (32, 'Капралова', 'Ю', 'В');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (33, 'Максютин', 'С', 'В');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (34, 'Маршева', 'Т', 'В');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (35, 'Сакаева', 'Л', 'Р');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (36, 'Яхин', 'М', 'А');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (37, 'Сабирова', 'Р', 'Н');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (38, 'Стребков', 'Е', 'В');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (39, 'Бажанов', 'В', 'А');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (40, 'Кошарский', 'И', 'Е');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (41, 'Шахова', 'И', 'С');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (42, 'Костюк', 'Д', 'И');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (43, 'Сагитов', 'А', 'Г');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (44, 'Естафьев', 'М', 'Е');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (45, 'Хасьянов', 'А', 'Ф');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (46, 'Каштанова', 'Е', 'К');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (47, 'Аршинов', 'М', '');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (48, 'Бубнов', 'Д', 'В');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (49, 'Магид', 'Е', 'А');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (50, 'Закиров', 'Л', '');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (51, 'Таланов', 'М', 'О');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (52, 'Кугуракова', 'В', 'В');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (53, 'Фазылов', 'В', 'Р');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (54, 'Евлампиев', 'И', 'А');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (55, 'Шамсутдинов', 'Т', 'Ф');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (56, 'Абдуллин', 'Р', 'М');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (57, 'Малахов', 'М', 'А');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (58, 'Фахрутдинов', 'Р', 'Р');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (59, 'Шемахин', 'А', 'Ю');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (60, 'Ибатулин', 'Н', 'Н');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (61, 'Салихов', 'И', 'И');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (62, 'Григорян', 'К', 'А');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (63, 'Насрутдинов', 'М', 'Ф');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (64, 'Тощев', 'А', 'С');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (65, 'Ильдиряков', 'В', 'Р');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (66, 'Воронов', 'Д', 'В');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (67, 'Хасанов', 'Р', 'А');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (68, 'Дорофеев', 'В', 'И');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (69, 'Гиниятуллин', 'Р', 'Г');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (70, 'Гумеров', 'К', '');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (71, 'Булыгина', 'Е', 'А');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (72, 'Тутубаллина', 'Е', 'В');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (73, 'Мутыгуллина', 'А', 'А');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (74, 'Низамутдинов', 'И', 'К');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (75, 'Зиятдинов', 'М', 'Т');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (76, 'Якупов', 'А', 'Ш');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (77, 'Хусаинов', 'Р', 'Р');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (78, 'Алиев', 'Н', 'Р');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (79, 'Голицына', 'И', 'Н');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (80, 'Басырова', 'А', 'Р');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (81, 'Кириллович', 'А', '');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (82, 'Невзорова', 'О', 'А');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (83, 'Даутов', 'Р', 'И');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (84, 'Зайдуллин', 'С', 'С');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (85, 'Хайдаров', 'Ш', 'М');
INSERT INTO teacher(id, last_name, first_name, middle_name) VALUES (86, 'Новиков', 'П', 'А');

INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (1, 1);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (1, 2);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (1, 3);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (1, 4);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (1, 5);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (1, 6);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (1, 17);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (1, 20);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (1, 25);

INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (2, 8);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (2, 13);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (2, 14);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (2, 15);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (2, 18);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (2, 24);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (2, 27);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (3, 18);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (3, 14);

INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (4, 7);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (4, 12);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (4, 10);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (4, 31);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (5, 10);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (6, 21);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (6, 29);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (7, 9);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (8, 11);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (8, 22);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (8, 32);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (9, 11);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (10, 13);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (10, 14);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (10, 18);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (10, 24);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (10, 27);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (10, 15);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (10, 25);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (11, 16);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (69, 26);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (68, 19);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (68, 26);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (68, 23);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (68, 28);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (68, 30);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (12, 33);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (12, 48);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (13, 33);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (14, 13);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (14, 27);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (14, 18);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (14, 14);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (14, 45);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (14, 54);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (15, 18);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (15, 14);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (16, 5);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (16, 23);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (16, 6);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (16, 34);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (16, 35);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (16, 25);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (16, 17);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (16, 3);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (16, 36);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (16, 37);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (17, 38);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (17, 15);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (17, 46);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (18, 38);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (19, 18);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (20, 39);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (21, 40);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (22, 41);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (23, 42);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (24, 43);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (25, 47);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (26, 44);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (70, 24);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (27, 49);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (29, 50);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (29, 51);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (29, 52);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (31, 53);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (33, 18);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (33, 58);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (33, 66);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (33, 78);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (34, 55);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (35, 56);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (35, 65);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (35, 68);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (35, 75);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (36, 68);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (37, 27);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (37, 57);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (37, 59);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (37, 63);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (38, 63);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (39, 55);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (39, 60);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (39, 64);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (40, 64);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (41, 67);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (42, 61);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (43, 62);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (43, 74);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (44, 62);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (45, 76);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (46, 77);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (47, 70);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (48, 42);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (49, 69);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (49, 41);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (50, 71);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (51, 86);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (52, 72);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (53, 51);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (54, 73);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (55, 18);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (55, 52);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (55, 41);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (55, 79);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (56, 79);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (57, 80);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (58, 80);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (59, 79);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (59, 81);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (59, 85);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (59, 65);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (60, 82);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (61, 49);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (62, 49);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (63, 27);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (64, 83);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (65, 75);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (66, 84);
INSERT INTO discipline_teacher (discipline_id, teacher_id) VALUES (67, 42);

INSERT INTO question(id, question_type, required, title) VALUES (1, 'RADIO', true, 'Посещаемость преподавателем занятий');
INSERT INTO question(id, question_type, required, title) VALUES (2, 'RADIO', true, 'Владение предметом');
INSERT INTO question(id, question_type, required, title) VALUES (3, 'RADIO', true, 'Доступность изложения материала');
INSERT INTO question(id, question_type, required, title) VALUES (4, 'RADIO', true, 'Актуальность и увлекательность курса');
INSERT INTO question(id, question_type, required, title) VALUES (5, 'RADIO', true, 'Ответы на вопросы студентов');
INSERT INTO question(id, question_type, required, title) VALUES (6, 'RADIO', true, 'Прослушали ли бы вы следующий курс у данного преподавателя?');
INSERT INTO question(id, question_type, required, title) VALUES (7, 'TEXT', false, 'Дополнительные комментарии по данному преподавателю');

INSERT INTO question_question_option (question_id, question_option) VALUES (1, '1');
INSERT INTO question_question_option (question_id, question_option) VALUES (1, '2');
INSERT INTO question_question_option (question_id, question_option) VALUES (1, '3');
INSERT INTO question_question_option (question_id, question_option) VALUES (1, '4');
INSERT INTO question_question_option (question_id, question_option) VALUES (1, '5');
INSERT INTO question_question_option (question_id, question_option) VALUES (1, 'Не могу оценить');
INSERT INTO question_question_option (question_id, question_option) VALUES (2, '1');
INSERT INTO question_question_option (question_id, question_option) VALUES (2, '2');
INSERT INTO question_question_option (question_id, question_option) VALUES (2, '3');
INSERT INTO question_question_option (question_id, question_option) VALUES (2, '4');
INSERT INTO question_question_option (question_id, question_option) VALUES (2, '5');
INSERT INTO question_question_option (question_id, question_option) VALUES (2, 'Не могу оценить');
INSERT INTO question_question_option (question_id, question_option) VALUES (3, '1');
INSERT INTO question_question_option (question_id, question_option) VALUES (3, '2');
INSERT INTO question_question_option (question_id, question_option) VALUES (3, '3');
INSERT INTO question_question_option (question_id, question_option) VALUES (3, '4');
INSERT INTO question_question_option (question_id, question_option) VALUES (3, '5');
INSERT INTO question_question_option (question_id, question_option) VALUES (3, 'Не могу оценить');
INSERT INTO question_question_option (question_id, question_option) VALUES (4, '1');
INSERT INTO question_question_option (question_id, question_option) VALUES (4, '2');
INSERT INTO question_question_option (question_id, question_option) VALUES (4, '3');
INSERT INTO question_question_option (question_id, question_option) VALUES (4, '4');
INSERT INTO question_question_option (question_id, question_option) VALUES (4, '5');
INSERT INTO question_question_option (question_id, question_option) VALUES (4, 'Не могу оценить');
INSERT INTO question_question_option (question_id, question_option) VALUES (5, '1');
INSERT INTO question_question_option (question_id, question_option) VALUES (5, '2');
INSERT INTO question_question_option (question_id, question_option) VALUES (5, '3');
INSERT INTO question_question_option (question_id, question_option) VALUES (5, '5');
INSERT INTO question_question_option (question_id, question_option) VALUES (5, '5');
INSERT INTO question_question_option (question_id, question_option) VALUES (5, 'Не могу оценить');
INSERT INTO question_question_option (question_id, question_option) VALUES (6, 'Да');
INSERT INTO question_question_option (question_id, question_option) VALUES (6, 'Нет');
INSERT INTO question_question_option (question_id, question_option) VALUES (6, 'Не знаю');