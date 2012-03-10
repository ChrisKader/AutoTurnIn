local addonName, privateTable = ...
if (GetLocale() == "ruRU")  then
privateTable.L = setmetatable({
	["reset"]="настройки были сброшены",
	["usage1"]="'on'/'off' включает или отключает аддон",
	["usage2"]="'all'/'list' принимать и сдавать все задания или только внесенные в список",
	["usage3"]="'loot' не завершать задания, где есть список наград либо завершать и выбирать самую дорогую",
	["enabled"]="включен",
	["disabled"]="отключен",
	["all"]="принимать и сдавать любое задание",
	["list"]="принимать и сдавать только внесенные в список задания",
	["dontlootfalse"]="завершать задания с выбором наград, брать самый дорогой предмет",
	["dontloottrue"]="не завершать задания, где есть выбор наград",
	
	["questTypeLabel"] = "задания", 
	["questTypeAll"] = "все", 
	["questTypeList"] = "ежедневные", 

	["lootTypeLabel"]="задания с наградами",
	["lootTypeFalse"]="не сдавать",
	["lootTypeTrue"]="выбирать самую дорогую",
	
	["tournamentLabel"]="серебряный турнир", 
	["tournamentWrit"]="Удостоверение чемпиона", -- 46114
	["tournamentPurse"]="Кошелек чемпиона",  -- 45724
	
	["DarkmoonTeleLabel"]="Ярмарка Новолуния: телепортация к пушке",
	["DarkmoonFaireTeleport"]="Телепортолог Фоцлебульб"},
	{__index = function(table, index) return index end})

privateTable.L.quests = {
-- AV both fractions 
["Пустые стойла"]={donotaccept=true},
-- Alliance AV Quests
["Друза"]={donotaccept=true},
["Ивус Лесной Властелин"]={donotaccept=true},
["Небо зовет – флот Слидора"]={donotaccept=true},
["Небо зовет – флот Змейера"]={donotaccept=true},
["Небо зовет – флот Ромеона"]={donotaccept=true},
["Больше обломков брони"]={donotaccept=true},
["Обломки брони"]={donotaccept=true},
["Упряжь ездовых баранов"]={donotaccept=true},
-- Horde AV Quests
["Галлон крови"]={donotaccept=true},
["Локолар Владыка Льда"]={donotaccept=true},
["Небо зовет – флот Мааши"]={donotaccept=true},
["Небо зовет – флот Маэстра"]={donotaccept=true}, 
["Небо зовет – флот Смуггла"]={donotaccept=true},
["Больше добычи!"]={donotaccept=true},
["Вражеский трофей"]={donotaccept=true},
["Упряжь из бараньей кожи"]={donotaccept=true},
-- Timbermaw Quests
["Перья для Гразла"]={item="Перо из головного убора Мертвого Леса", amount=5, currency=false},
["Перья для Нафиэна"]={item="Перо из головного убора Мертвого Леса", amount=5, currency=false},
["Четки для Сальфы"]={item="Бусы духов Зимней Спячки", amount=5, currency=false},
-- Cenarion
["Зашифрованные Сумеречные тексты"]={item="Зашифрованный Сумеречный текст", amount=10, currency=false},
["Не теряя веры"]={item="Зашифрованные Сумеречные тексты", amount=10, currency=false},
-- Thorium Brotherhood 
["Завоевать еще большую благосклонность"]={item="Окалина черного железа", amount=100, currency=false},
["Завоевать благосклонность"]={item="Окалина черного железа", amount=4, currency=false},
["Сумеречные ожерелья"]={item="Сумеречное ожерелье", amount=20, currency=false},
["Покровительство братства, кожа Недр"]={item="Кожа Недр", amount=2, currency=false},
["Покровительство братства, кровь горы"]={item="Кровь Горы", amount=1, currency=false},
["Покровительство братства, огненное ядро"]={item="Огненное ядро", amount=1, currency=false},
["Покровительство братства, черное железо"]={item="Руда черного железа", amount=10, currency=false},
["Покровительство братства, ядро лавы"]={item="	Ядро лавы", amount=1, currency=false},


--[[Burning Crusade]]--
--Lower City
["Больше перьев"]={item="Перо араккоа", amount=30, currency=false},
--Aldor
["Больше знаков Кил'джедена"]={item="Знак Кил'джедена", amount=10, currency=false},
["Больше знаков Саргераса"]={item="Знак Саргераса", amount=10, currency=false},
["Латные перчатки Скверны"]={item="Латные перчатки Скверны", amount=10, currency=false},
["Знак Кил'джедена"]={item="Знак Кил'джедена", amount=1, currency=false},
["Знак Саргераса"]={item="Знак Саргераса", amount=1, currency=false},
["Больше ядовитых желез"]={item="Ядовитая железа Смертеплета", amount=8, currency=false},
--Scryer
["Больше перстней Огнекрылов"]={item="Перстень Огнекрылов", amount=10, currency=false},
["Больше перстней Ярости Солнца"]={item="Перстень Ярости Солнца", amount=10, currency=false},
["Чародейские фолианты"]={item="Чародейский фолиант", amount=1, currency=false},
["Перстень Огнекрылов"]={item="Перстень Огнекрылов", amount=1, currency=false},
["Перстень Ярости Солнца"]={item="Перстень Ярости Солнца", amount=1, currency=false},
["Больше глаз василисков"]={item="Глаз гладкоспинного василиска", amount=8, currency=false},
--Cenarion Exp
["Определение растений"]="",
--Skettis
["Больше теневой пыли"]={item="Теневая пыль", amount=6, currency=false},
["Огонь над Скеттисом"]="",
["Побег из Скеттиса"]="",
--Sporeggar
["Принеси мне еще одну клумбу!"]={item="Кровавый гибискус", amount=5, currency=false},
["Нужно больше грибов!"]={item="Огнешляпка", amount=10, currency=false},
["Новые прорастающие споры"]={item="Прорастающие споры", amount=6, currency=false},
["Новые мешочки со спорами"]={item="Прорастающие споры", amount=10, currency=false},
["Еще усиков!"]={item="Усик болотника", amount=6, currency=false},
["Раз уж мы по-прежнему друзья..."]="",
-- Consortium
["Снова осколки кристалла"]="",
["Кость на вес воздуха"]="",
["Еще одна группа духов Астрала"]="",
["Каталог бирок пленников Эфириума"]="",
-- Halaa
["Порошок кристалла Ошу'гуна"]="",
-- Sunwell
["Щедрое пожертвование"]="",
["Подпитка для силового поля"]="",
["Отвлекающий маневр на Тропе Мертвых"]="",
["Дальнейшая перенастройка"]="",
["Сражение за оружейную Солнечного Предела"]="",
["Перехват контейнеров с маной"]="",
["Мультифазовый подход"]="",
["Военные планы Ярости Солнца"]="",
["Обретение преимущества"]="",
["Знай свою силовую линию!"]="",
["Захват гавани"]="",
["Воздушные атаки должны продолжаться!"]="",
["Перехватить подкрепление"]="",
["Битва должна продолжаться!"]="",
["Подготовка к работе"]="",
["Поддержка портала Солнечного Колодца"]="",
["Клинки Рассвета должны быть сокрушены!"]="",
["И опять – смотри в корень"]="",
["Зачистить залив Зеленожабрых!"]="",
["Загнать врага в угол"]="",
["Продолжаем..."]="",
["Взаимовыгодный бизнес"]="",
["Оружие Ата'мала"]="",
-- Ogri'la
["Еще разок задать им жару!"]="",
["Нам нужно больше летучих скатов!"]="",
["Демонов – долой!"]="",
["Излучение реликвии"]="",
-- Netherdrake
["Ботиранг: Лекарство для нерадивых работников"]="",
["Драконы – это не самое страшное"]="",
["Кристаллы Крыльев Пустоты"]="",
["Медленная смерть"]="",
["Недружелюбные небеса"]="",
["Пыльца пустопраха"]="",
["Разрушение сумеречного портала"]="",
["Самая Опасная Ловушка"]="",
["Собрать их все!"]="",
["Собрать по кусочкам..."]="",
["Хаотитовая руда"]="",
["Шкуры живодеров-пустокопов"]="",
-- Fishing daily
["Кроколиски в городе"]="",
["Ловить креветок – это не жук чихнул"]="",
["Поймай бандюгу"]="",
["Та самая рыбка"]="",
["Филе сквернокровного луциана"]="",
-- Cooking daily
["Мания"]="",
["Месть сладка"]="",
["Очень горячая похлебка"]="",
["Супчик для души"]="",

--[[ WOtLK]]--
-- Kalu'ak
["Планы на будущее"]="",
["Путь к его сердцу..."]="",
["Подготовка к самому худшему"]="",
-- Oracul
["Умиротворение Великого камня дождя"]="",
["Очищающая песня"]="",
["Власть над кристаллами"]="",
["Кристальное сияние разума"]="",
["Воля Титанов"]="",
["Могущество Великих"]="",
["Песнь ветра и воды"]="",
["Песнь Плодородия"]="",
--Frenzyheart Tribe
["Буйство Картака"]="",
["Куриная вечеринка"]="",
["Орудия войны"]="",
["Реджек: первая кровь"]="",
["Сила Бури"]="",
["Сила озаренной крови"]="",
["Тайная сила племени Бешеного Сердца"]="",
["Шлем героя"]="",
--Рыцари черного клинка
["Закрытое воздушное пространство"]="",
["Злоб любит огонь!"]="",
["Из праха восстаньте!"]="",
["Наша метка"]="",
["Пристрели их"]="",
["Сбор информации"]="",
--турнир
["Атака с воздуха"]="tournament",
["Битва на вражеской территории"]="tournament",
["Битва у Цитадели"]="tournament",
["Большая тренировка"]="",
["Великая битва"]="",
["Вестник смерти Карос"]="",
["Вклад в общее дело"]="",
["Гормоку нужны снобольды"]="",
["Достойное оружие"]="",
["Дроттинн Хротгар"]="",
["Завтрак для чемпионов"]="",
["Изгнать Кракена!"]="",
["Клинок Зимы"]="",
["Клинок, достойный чемпиона"]="",
["Кстати, чем питаются йети?"]="",
["Лапами кверху"]="",
["Милосердие Света"]="",
["На равных с чемпионами"]="tournament",
["На этот раз ты нарвался, Кул"]="",
["Обломки стен Ульдуара"]="",
["Опознание останков"]="",
["Орнолф Меченый"]="",
["Остановить нападение"]="",
["Откуда дровишки?"]="",
["Призыватель туманов Йингвар"]="",
["Спасательная операция на море"]="",
["Судьба Павших"]="",
["Теория и практика"]="",
["Тренировка на поле боя"]="",
["У вражеских врат"]="",
--Sons of Hodir
["Больше Вечного льда!"]={item="Частичка Вечного льда", amount=1, currency=false},
["Бросая копье Ходира"]="",
["Жар и холод"]="",
["Звуки рога Ходира"]="",
["Контрразведчик"]="",
["Муки Арнгрима"]="",
["Подношение Ходиру"]={item="Реликвия Ульдуара", amount=10, currency=false},
["Полировка шлема"]="",
--The Wyrmrest Accord
["Асы, ввысь!"]="",
["Оборона Храма Драконьего Покоя"]="",
["Охота на драконов"]="",
--Valiance Expedition + Warsong Offensive
["Атака пехоты"]="",
["Воздушный десант"]="",
["Запчасти"]="",
["Кровь избранных"]="",
["На грани жизни и смерти"]="",
["Нападем, пока враг слаб!"]="",
["Перехват донесений"]="",
["Починка крошшеров"]="",
["Прорвать блокаду"]="",
["Резня в Черноречье"]="",
["Царь горы"]="",
["В военном лазарете"]="",
["Искрошить Альянс"]="",
["Ослепление Альянса"]="",
["Починки"]="",
["Преследуй по пятам"]="",
--Ювелирное дело
['Заказ от торговой компании: амулет из кровавого нефрита']="",
['Заказ от торговой компании: блестящая статуэтка из бивня']="",
['Заказ от торговой компании: брошь Беспощадного солнца']="",
['Заказ от торговой компании: изысканная костяная статуэтка']="",
['Заказ от торговой компании: реликвия Восходящего Солнца']="",
['Заказ от торговой компании: Реликвия из сияющей брони']="",
['Недостающий камень']="",
['Починка ожерелья']="",
--Рыбная ловля
['Густая кровь']="",
['Звезда сточных вод']="",
['Обезручен!']="",
['Опасный деликатес']="",
['Пусть тебе улыбнется удача – в другой раз!']="",
['Рыба-призрак']="",
--Кулинария
['Мясной рулет в странногрибном соусе']="",
['Промокший рецепт']="",
['Рагу для завсегдатаев Стоков']="",
['Сбор в Приюте фокусника']="",
['Сосиски с горчицей!']="",
['Сыр для Златоплава']="",

--[[ Cataclysm]]--
-- Firelands Invasion
["Благословение природы"]="",
["Брешь в обороне"]="",
["Буйная растительность"]="",
["В глубины"]="",
["В огонь"]={donotaccept=true},
["Волшебный огонек"]="",
["Враждебные стихии"]="",
["Вылечить раны"]="",
["Гончие Шэннокса"]="",
["Горькая пилюля"]="",
["Дополнительное оружие"]={item=416, amount=125, currency=true},
["Живой обсидиан"]="",
["Завыть по-волчьи"]="",
["Захвачены врасплох"]="",
["Защита территории"]="",
["Защитники Хиджала"]="",
["Зловещая паутина"]="",
["Зов стаи"]="",
["Изгарь"]="",
["Изменники возвращаются"]="",
["Измерение температуры"]="",
["Кара, настигающая пламя"]="",
["Клич стаи"]="",
["Королева огненных пауков"]="",
["Крылья в огне"]="",
["Лечение отеков"]="",
["Материнский гнев"]="",
["Медвежата на дереве"]="",
["Методы Фэндрала"]="",
["Наполнение лунного колодца"]={item=416, amount=125, currency=true},
["Начнем, пока они еще маленькие"]="",
["Некоторые любят погорячее"]="",
["Облегчить боль"]="",
["Огнеарахнофобия"]="",
["Огненные цветы"]="",
["Огненный плеточник"]="",
["Огонь в небе"]="",
["Одинокая башня"]={donotaccept=true},
["Опаленные крылья"]="",
["Орнитологический интерес"]="",
["Очень… Нужна… Вода…"]="",
["Поджигатели из Расплавленного потока"]="",
["Пока, пташка!"]="",
["Пострадавшие от огня"]="",
["Превозмочь жару"]="",
["Призыв Древних"]={item=416, amount=125, currency=true},
["Припасы для той стороны"]="",
["Псы войны"]="",
["Святилище должно выстоять"]="",
["Сила Малорна"]="",
["Спасение черепашат"]="",
["Среди деревьев"]="",
["Стражницы наблюдают"]="",
["Тяжелое падение"]="",
["Удар в сердце"]="",
["Украсть магмолии"]="",
["Уничтожение солнечного ядра"]="",
["Чем больше, тем лучше"]="",
["Через врата ада"]="",
["Эхо Немесиса"]="",
["Яйцесбор"]="",
-- Tol Barad Peninsula
["Акула Амбал"]="",
["Баланда"]="",
["Блок Д"]="",
["Верховный маг в заточении"]="",
["Взятие крепости"]="",
["Гигантская проблема"]="",
["Забрать все оружие"]="",
["Завершение работы"]="",
["Как работают магниты?"]="",
["Капитан П. Харрис"]="",
["Липкая работа"]="",
["Научи человека ловить рыбу... Или красть ее!"]="",
["Неприветливый город"]="",
["Окончательная зачистка"]="",
["Освобождение дозорной башни"]="",
["Охота за привидениями"]="",
["Очищение леса"]="",
["Очищение Проклятых глубин"]="",
["По вражеским тропам"]="",
["Победа на Тол Бараде"]="",
["Поддержание боевого духа"]="",
["Позабытые"]="",
["Припасы на болоте"]="",
["Проклятые кандалы"]="",
["Пушечное ядро!"]="",
["Пушки к бою!"]="",
["Раздробить косточки"]="",
["Разыскивается: начальник верфи Веллсон"]="",
["Сварнос"]="",
["Спасение останков"]="",
["Старший лейтенант Коннор"]="",
["Тюремный бунт"]="",
["Тюремщик"]="",
["Уроки прошлого"]="",
["Щепки летят!"]="",
-- Теразан
["Беспокойный род"]="",
["В подземных глубинах"]="",
["Глоп, сын Глопа"]="",
["Грибная ярость"]="",
["Настойчивость"]="",
["Пейнит"]="",
["Подземная экономика"]="",
["Потерявшийся в глубинах"]="",
["Рыхлая порода"]="",
["Червинтовая угроза"]="",
-- Рамкахены
["Маленькие любители фиников"]="",
["Огонь с высот"]="",
--Клан Громового Молота
["Боевой эль"]="",
["Вылазка за продовольствием"]="",
["За пивком"]="",
["Захлопни Драконью Пасть"]="",
["Полководец Халтар вернулся"]="",
--Клан Драконьей Пасти
["Дотла"]="",
["Еще один голодный рот"]="",
["На крючке"]="",
["Смерть верховному шаману"]="",
["Сокрушение Громового Молота"]="",
--Ювелир
["Грызун! Только не это!"]="",
["Клейкая субстанция элементалей"]="",
["Огрезонцы негодуют"]="",
["Писк моды!"]="",
["Подарок для Лайлы"]="",
--кулинар альянс
["Азы профессии"]="",
["Дань уважения предкам"]="",
["Доставка бочонка"]="",
["Забота о стражниках"]="",
["Королевский сидр"]="",
["Крабный день"]="",
["Нужны цыплята"]="",
["Ребрышки для часовых"]="",
["Рулета с потрошками много не бывает"]="",
["Рыбацкая услада"]="",
["Секрет превосходного кимчи"]="",
["Сиротки тоже любят печенье!"]="",
["Тыквенные оладьи Пэнни"]="",
["Хлеба с пряностями много не бывает"]="",
["Хлеба с пряностями хоть отбавляй"]="",
--кулинар орда
['"Волшебные" грибочки']="",
["Вор тоже хочет кушать"]="",
["Вот так лилии!"]="",
["Всем тараканам тараканы"]="",
["Деликатесные грибы"]="",
["Как насчет того, чтобы добавить мух?"]="",
["Мулгорский хлеб с пряностями"]="",
["Недостаток орехов"]="",
["Осторожно: злые фрукты!"]="",
["Перемолка зерна"]="",
["Раки под креольским соусом"]="",
["С беконом все потянет"]="",
["Самые лучшие продукты"]="",
["Укради у своих"]="",
["Улитки прытки"]="",
--Рыболов альянс
["Большой глоток"]="",
["Гномский блесн-о-матик"]="",
["Запасаемся"]="",
["Зимняя рыбалка"]="",
["Легендарная рыба"]="",
["Ловля светлоперого судака"]="",
["Любимая рыба"]="",
["На живца"]="",
["Накопаем червей"]="",
["Накопать моллюсков"]="",
["Подвеска сестры"]="",
["Ревущий водопад"]="",
["Рыба для Трескунчика"]="",
["Скальный омар"]="",
["Скользкая закуска"]="",
--Рыболов орда
["Блестящие камешки"]="",
["Выловить голову"]="",
["Деликатесные раки"]="",
["Дело в кольце"]="",
["Заселить водоем"]="",
["Золотой улов"]="",
["Канавный монстр!"]="",
["Любишь щуку?"]="",
["Невероятное усилие"]="",
["Нет вредным отходам"]="",
["Опасные головастики"]="",
["Пора слизней"]="",
["Строптивый улов"]="",
["Хищники в пруду"]="",
["Шустрые моллюски"]="",
-- Ярмарка новолуния
["В яблочко!"]="",
["Гноллобой"]="",
["Командир танка"]="",
["Цель: черепаха"]="",
["Человек-пушка"]="",
--Любовная лихорадка
["Вкус конфет"]="",
["Конец Королевской компании"]="",
["Легкий аромат духов"]="",
["Легкий аромат одеколона"]="",
["Подарок для верховного вождя"]="",
["Подарок для верховной жрицы Элуны"]="",
["Подарок для Вождя"]="",
["Подарок для королевы банши"]="",
["Подарок для короля Штормграда"]="",
["Подарок для правителя Стальгорна"]="",
["Подарок для правящего лорда Кель'Таласа"]="",
["Подарок для Пророка"]="",
["Получите, распишитесь"]="",
--Сад чудес
["Большая охота за яйцами"]="",
["Весенние сборщики"]="",
["Весенние собиратели"]="",
["Что вам надо? Шоколада!"]="",
--Огненный солнцеворот
["Опять бросаем факелы"]="",
["Опять жонглирование факелами"]="",
["Ответный удар"]="",
["Призовите Ахуна"]="",

--tranglethorn Fishing Extravaganza
['Лучший рыболов']="",
['Начинающий рыболов']="",
['Редкая рыба – дезийская ставрида']="",
['Редкая рыба – рыба-ангел Кифэра']="",
['Редкая рыба – синий полосатик Браунелла']="",
--Kalu'ak Fishing Derby
['Калуакское рыбоборье']="",
['Пусть тебе улыбнется удача – в другой раз!']="",
}
end