// @strict-types

#Область ОбработчикиСобытийФормы

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	НастройкиСтрокойВнутр	= Параметры.НастройкиСтрокойВнутр;
	
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиКомандФормы

&НаКлиенте
Процедура Команда_Сохранить(Команда)
		
	Если ПроверитьВозможностьСохранения() Тогда
		ОповеститьОВыборе(НастройкиСтрокойВнутр);
	КонецЕсли;
	
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

&НаСервере
Функция ПроверитьВозможностьСохранения()
	
	Если ПустаяСтрока(НастройкиСтрокойВнутр) Тогда
		Возврат Истина;
	КонецЕсли;
	
	Попытка
		//@skip-check module-unused-local-variable
		Настройки = ЗначениеИзСтрокиВнутр(НастройкиСтрокойВнутр);
		Возврат Истина;
	Исключение
		Сообщение = Новый СообщениеПользователю();
		Сообщение.Текст = "Не удалось обернуть строку внутр в значение!";
		Сообщение.Сообщить();
		Возврат Ложь;
	КонецПопытки;

КонецФункции

#КонецОбласти
