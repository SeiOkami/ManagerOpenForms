
#Область ОбработчикиСобытийФормы

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	ВспомогательныеЗначения	= Параметры.ВспомогательныеЗначения;
	
	ЗаполнитьДеревоДоступныхФорм();
	
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытийЭлементовТаблицыФормы

&НаКлиенте
Процедура ДоступныеФормыВыбор(Элемент, ВыбраннаяСтрока, Поле, СтандартнаяОбработка)

	Если Элемент.ТекущиеДанные.ЭтоФорма Тогда
		ОткрытьВыбраннуюФорму();
	КонецЕсли;

КонецПроцедуры

#КонецОбласти

#Область ОбработчикиКомандФормы

&НаКлиенте
Процедура ОткрытьВыбраннуюФорму(Команда = Неопределено)
	
	ТекущиеДанные = Элементы.ДоступныеФормы.ТекущиеДанные;
	Если ТекущиеДанные = Неопределено Тогда
		Возврат;
	КонецЕсли;
	
	Если ПустаяСтрока(ТекущиеДанные.ПолноеИмя) Тогда
		
		ОткрытьВыбраннуюФормуКонец();
		
	Иначе
		
		ПараметрыРедактора	= Новый Структура();
		ПараметрыРедактора.Вставить("РедактируемоеЗначение", Новый Структура);
		ПараметрыРедактора.Вставить("Заголовок", "Укажите параметры для открытия формы");
		
		ОткрытьФорму(ВладелецФормы.ПолныйПутьКФормеОбработки("РедакторСтруктурыСоответствия"), ПараметрыРедактора, ЭтаФорма, , , , 
		Новый ОписаниеОповещения("ОткрытьВыбраннуюФормуКонец", ЭтаФорма), РежимОткрытияОкнаФормы.БлокироватьОкноВладельца);
		
	КонецЕсли;
	
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

&НаСервере
Процедура ЗаполнитьДеревоДоступныхФорм()
	
	КорневыеСтроки	= ДоступныеФормы.ПолучитьЭлементы();
	КорневыеСтроки.Очистить();
	
	НавигационныеСсылки		= Новый Соответствие;
	
	ЗаполнитьСистемныеФормы(КорневыеСтроки);
	
	//История работы 
	СтрокаИстории			= ДобавитьОписаниеДоступнойФормы(КорневыеСтроки, "ИсторияРаботы", , 
	ВспомогательныеЗначения.ИндексыКартинкиСтрокФорм.ИсторияРаботы);
	КоллекцияСтрокиИстории	= СтрокаИстории.ПолучитьЭлементы();
	
	Для Каждого ЭлементИсторииРаботыПользователя Из ИсторияРаботыПользователя.Получить() Цикл
		ТекущаяНавигационнаяСсылка	= ЭлементИсторииРаботыПользователя.НавигационнаяСсылка;
		Если НавигационныеСсылки.Получить(ТекущаяНавигационнаяСсылка) = Неопределено Тогда
			СтрокаТекущейСсылки	= ДобавитьОписаниеДоступнойФормы(КоллекцияСтрокиИстории, ,СтрокаИстории.Картинка, , , ТекущаяНавигационнаяСсылка);
			НавигационныеСсылки.Вставить(ТекущаяНавигационнаяСсылка, ЗначениеВМассиве(СтрокаТекущейСсылки));
		КонецЕсли;
	КонецЦикла;
	
		
	//Заполняем избранное
	ИзбранноеРаботыПользователя	= ХранилищеСистемныхНастроек.Загрузить("Общее/ИзбранноеРаботыПользователя");
	Если ТипЗнч(ИзбранноеРаботыПользователя) = Тип("ИзбранноеРаботыПользователя") Тогда
		СтрокаИзбранного			= ДобавитьОписаниеДоступнойФормы(КорневыеСтроки, "Избранное",, 
		ВспомогательныеЗначения.ИндексыКартинкиСтрокФорм.Избранное);
		КоллекцияСтрокиИзбранного	= СтрокаИзбранного.ПолучитьЭлементы();
		Для Каждого ЭлементИзбранного Из ИзбранноеРаботыПользователя Цикл
			ТекущаяНавигационнаяСсылка	= ЭлементИзбранного.НавигационнаяСсылка;
			СтрокаТекущейСсылки			= ДобавитьОписаниеДоступнойФормы(КоллекцияСтрокиИзбранного, 
			ЭлементИзбранного.Представление, ЭлементИзбранного.Представление, СтрокаИзбранного.Картинка, , ТекущаяНавигационнаяСсылка);
			СтрокиПоТекущейСсылке	= НавигационныеСсылки.Получить(ТекущаяНавигационнаяСсылка);
			Если СтрокиПоТекущейСсылке = Неопределено Тогда
				СтрокиПоТекущейСсылке	= Новый Массив;
				НавигационныеСсылки.Вставить(ТекущаяНавигационнаяСсылка, СтрокиПоТекущейСсылке);
			КонецЕсли;
			СтрокиПоТекущейСсылке.Добавить(СтрокаТекущейСсылки);
		КонецЦикла;
	КонецЕсли;
	
	
	//Заполняем представления навигационных ссылок
	МассивСсылок	= Новый Массив;
	Для Каждого КлючИЗначение Из НавигационныеСсылки Цикл
		МассивСсылок.Добавить(КлючИЗначение.Ключ);
	КонецЦикла;
	ПредставленияСсылок	= ПолучитьПредставленияНавигационныхСсылок(МассивСсылок);
	Для Каждого ПредставлениеСсылки Из ПредставленияСсылок Цикл
		Для Каждого ТекущаяСтрока Из НавигационныеСсылки.Получить(ПредставлениеСсылки.НавигационнаяСсылка) Цикл
			ТекущаяСтрока.Синоним	= ПредставлениеСсылки.Текст;
		КонецЦикла;
	КонецЦикла;
	
	
	//Заполняем метаданные
	Для Каждого КлючИЗначение Из МетаданныеЕдинственногоИМножественного() Цикл
		
		ИмяМетаданных	= КлючИЗначение.Значение;
		
		СтрокаТипаОбъектов	= ДобавитьОписаниеДоступнойФормы(КорневыеСтроки, ИмяМетаданных);
		ВспомогательныеЗначения.ИндексыКартинкиСтрокФорм.Свойство(КлючИЗначение.Ключ, СтрокаТипаОбъектов.Картинка);
		
		КоллекцияСтрокОбъектов	= СтрокаТипаОбъектов.ПолучитьЭлементы();
		
		Для Каждого ТекущиеМетаданные Из Метаданные[ИмяМетаданных] Цикл
			
			КоллекцияМетаданныхФорм	= Новый Массив;
			Если ИмяМетаданных = "ОбщиеФормы" Тогда
				КоллекцияМетаданныхФорм.Добавить(ТекущиеМетаданные);
				СтрокаТекущегоОбъекта	= СтрокаТипаОбъектов;
			Иначе
				КоллекцияМетаданныхФорм	= ТекущиеМетаданные.Формы;
				СтрокаТекущегоОбъекта	= ДобавитьОписаниеДоступнойФормы(КоллекцияСтрокОбъектов, 
				ТекущиеМетаданные.Имя, ТекущиеМетаданные.Синоним, СтрокаТипаОбъектов.Картинка);
			КонецЕсли;
			
			КоллекцияСтрокФорм	= СтрокаТекущегоОбъекта.ПолучитьЭлементы();
						
			Для Каждого МетаданныеФормы Из КоллекцияМетаданныхФорм Цикл
				
				Если НЕ МетаданныеФормы.ТипФормы = Метаданные.СвойстваОбъектов.ТипФормы.Управляемая Тогда
					Продолжить;
				КонецЕсли;
				
				ОписаниеФормы	= ДобавитьОписаниеДоступнойФормы(КоллекцияСтрокФорм);
				ЗаполнитьЗначенияСвойств(ОписаниеФормы, МетаданныеФормы);
				ОписаниеФормы.ПолноеИмя	= МетаданныеФормы.ПолноеИмя();
				ОписаниеФормы.ЭтоФорма	= Истина;
				
			КонецЦикла;
			
			Если КоллекцияСтрокФорм.Количество() = 0 Тогда
				КоллекцияСтрокОбъектов.Удалить(СтрокаТекущегоОбъекта);
			КонецЕсли;
			
		КонецЦикла;
		
		
	КонецЦикла;
	
	
КонецПроцедуры

&НаСервере
Процедура ЗаполнитьСистемныеФормы(КорневыеСтроки)
	
	ТекущийРодитель			= ДобавитьОписаниеДоступнойФормы(
		КорневыеСтроки, "СистемныеФормы", , 
		ВспомогательныеЗначения.ИндексыКартинкиСтрокФорм.Системные);
		
	СистемныеФормы = РеквизитФормыВЗначение("Объект").ПолучитьМакет("СистемныеФормы");
	
	ОбластьЯчеек   = СистемныеФормы.Область(1, 1, 
	СистемныеФормы.ВысотаТаблицы, СистемныеФормы.ШиринаТаблицы);

    ИсточникДанных = Новый ОписаниеИсточникаДанных(ОбластьЯчеек);

    ПостроительОтчета = Новый ПостроительОтчета;
    ПостроительОтчета.ИсточникДанных = ИсточникДанных;
    ПостроительОтчета.Выполнить();

    СистемныеФормы = ПостроительОтчета.Результат.Выгрузить();
	
	КоллекцияСтрок	= ТекущийРодитель.ПолучитьЭлементы();
	Для Каждого СистемнаяФорма Из СистемныеФормы Цикл
		
		Если ПустаяСтрока(СистемнаяФорма.Имя) Тогда
			Продолжить;
		КонецЕсли;
		
		Если ЗначениеЗаполнено(СистемнаяФорма.Заголовок) Тогда
			ЗаголовокФормы = СтрШаблон("%1 (%2)", СистемнаяФорма.Имя, СистемнаяФорма.Заголовок);
		Иначе
			ЗаголовокФормы = СистемнаяФорма.Имя;
		КонецЕсли;
				
		ДобавитьОписаниеДоступнойФормы(КоллекцияСтрок, 
			СистемнаяФорма.Имя, ЗаголовокФормы, 
			ТекущийРодитель.Картинка, "sysForm:" + СистемнаяФорма.Имя);
			
	КонецЦикла;
	
КонецПроцедуры

&НаСервереБезКонтекста
Функция ДобавитьОписаниеДоступнойФормы(КоллекцияСтрок, 
	Имя = "", Синоним = "", Картинка = 0, 
	ПолноеИмяФормы = "", НавигационнаяСсылка = "")
	
	НоваяСтрока						= КоллекцияСтрок.Добавить();
	НоваяСтрока.Имя					= Имя;
	НоваяСтрока.Синоним				= ?(ПустаяСтрока(Синоним), Имя, Синоним);
	НоваяСтрока.Картинка			= Картинка;
	НоваяСтрока.ПолноеИмя			= ПолноеИмяФормы;
	НоваяСтрока.НавигационнаяСсылка	= НавигационнаяСсылка;
	
	НоваяСтрока.ЭтоФорма			= НЕ ПустаяСтрока(НоваяСтрока.ПолноеИмя) 
	ИЛИ НЕ ПустаяСтрока(НоваяСтрока.НавигационнаяСсылка);
	
	Возврат НоваяСтрока;
	
КонецФункции

&НаКлиентеНаСервереБезКонтекста
Функция МетаданныеЕдинственногоИМножественного()
	
	Соответствие	= Новый Соответствие;
	Соответствие.Вставить("ОбщаяФорма"				, "ОбщиеФормы");
	Соответствие.Вставить("ПланОбмена"				, "ПланыОбмена");
	Соответствие.Вставить("Справочник"				, "Справочники");
	Соответствие.Вставить("Документ"				, "Документы");
	Соответствие.Вставить("ЖурналДокументов"		, "ЖурналыДокументов");
	Соответствие.Вставить("Перечисление"			, "Перечисления");
	Соответствие.Вставить("Отчет"					, "Отчеты");
	Соответствие.Вставить("Обработка"				, "Обработки");
	Соответствие.Вставить("ПланВидовХарактеристик"	, "ПланыВидовХарактеристик");
	Соответствие.Вставить("ПланСчетов"				, "ПланыСчетов");
	Соответствие.Вставить("ПланВидовРасчета"		, "ПланыВидовРасчета");
	Соответствие.Вставить("РегистрСведений"			, "РегистрыСведений");
	Соответствие.Вставить("РегистрНакопления"		, "РегистрыНакопления");
	Соответствие.Вставить("РегистрБухгалтерии"		, "РегистрыБухгалтерии");
	Соответствие.Вставить("РегистрРасчета"			, "РегистрыРасчета");
	Соответствие.Вставить("БизнесПроцесс"			, "БизнесПроцессы");
	Соответствие.Вставить("Задача"					, "Задачи");
	
	Возврат Соответствие;
	
КонецФункции

// Создает массив и помещает в него переданное значение.
//
// Параметры:
//  Значение - Произвольный - любое значение.
//
// Возвращаемое значение:
//  Массив - массив из одного элемента.
//
&НаКлиентеНаСервереБезКонтекста
Функция ЗначениеВМассиве(Значение) Экспорт
	
	Массив = Новый Массив;
	Массив.Добавить(Значение);
	
	Возврат Массив;
	
КонецФункции

&НаКлиенте
Процедура ОткрытьВыбраннуюФормуКонец(ПараметрыОткрытия = Неопределено, ДопПараметры = Неопределено) Экспорт
	
	ТекущиеДанные = Элементы.ДоступныеФормы.ТекущиеДанные;
	Если ТекущиеДанные = Неопределено Тогда
		Возврат;
	КонецЕсли;
	
	ПараметрыЗакрытия = Новый Структура("ПолноеИмя,НавигационнаяСсылка,Параметры");
	ЗаполнитьЗначенияСвойств(ПараметрыЗакрытия, ТекущиеДанные);
	
	Если ТипЗнч(ПараметрыОткрытия) = Тип("Структура") 
		И ПараметрыОткрытия.Свойство("ЗначениеРеквизита") Тогда
		ПараметрыЗакрытия.Параметры = ПараметрыОткрытия.ЗначениеРеквизита;
	КонецЕсли;
	
	ЭтаФорма.Закрыть(ПараметрыЗакрытия);
	
КонецПроцедуры

#КонецОбласти

