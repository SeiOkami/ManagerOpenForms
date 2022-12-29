﻿
#Область ОбработчикиСобытийФормы

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	КомпоновщикНастроек = Параметры.КомпоновщикНастроек;
	
КонецПроцедуры
	
#КонецОбласти

#Область ОбработчикиКомандФормы
 
&НаКлиенте
Процедура ПрименитьИзменения(Команда)
	
	Закрыть(Новый Структура("ЗначениеРеквизита", КомпоновщикНастроек));
	
КонецПроцедуры

#КонецОбласти

#Область Настройки

&НаКлиенте
Процедура ПоляГруппировкиНедоступны()
	
	Элементы.СтраницыПолейГруппировки.ТекущаяСтраница = Элементы.НедоступныеНастройкиПолейГруппировки;
					
КонецПроцедуры

&НаКлиенте
Процедура ВыбранныеПоляДоступны(ЭлементСтруктуры)
	
	Если КомпоновщикНастроек.Настройки.НаличиеВыбораУЭлемента(ЭлементСтруктуры) Тогда
				
		ЛокальныеВыбранныеПоля = Истина;
		Элементы.СтраницыПолейВыбора.ТекущаяСтраница = Элементы.НастройкиВыбранныхПолей;
			
	Иначе
			
		ЛокальныеВыбранныеПоля = Ложь;
		Элементы.СтраницыПолейВыбора.ТекущаяСтраница = Элементы.ОтключенныеНастройкиВыбранныхПолей;
			
	КонецЕсли;
		
	Элементы.ЛокальныеВыбранныеПоля.ТолькоПросмотр = Ложь;
					
КонецПроцедуры

&НаКлиенте
Процедура ВыбранныеПоляНедоступны()
	
	ЛокальныеВыбранныеПоля = Ложь;
	Элементы.ЛокальныеВыбранныеПоля.ТолькоПросмотр = Истина;
	Элементы.СтраницыПолейВыбора.ТекущаяСтраница = Элементы.НедоступныеНастройкиВыбранныхПолей;
					
КонецПроцедуры

&НаКлиенте
Процедура ОтборДоступен(ЭлементСтруктуры)
	
	Если КомпоновщикНастроек.Настройки.НаличиеОтбораУЭлемента(ЭлементСтруктуры) Тогда
		
		ЛокальныйОтбор = Истина;
		Элементы.СтраницыОтбора.ТекущаяСтраница = Элементы.НастройкиОтбора;
			
	Иначе
		
		ЛокальныйОтбор = Ложь;
		Элементы.СтраницыОтбора.ТекущаяСтраница = Элементы.ОтключенныеНастройкиОтбора;
			
	КонецЕсли;
			
	Элементы.ЛокальныйОтбор.ТолькоПросмотр = Ложь;
	
КонецПроцедуры
		
&НаКлиенте
Процедура ОтборНедоступен()
	
	ЛокальныйОтбор = Ложь;
	Элементы.ЛокальныйОтбор.ТолькоПросмотр = Истина;
	Элементы.СтраницыОтбора.ТекущаяСтраница = Элементы.НедоступныеНастройкиОтбора;
		
КонецПроцедуры

&НаКлиенте
Процедура ПорядокДоступен(ЭлементСтруктуры)
	
	Если КомпоновщикНастроек.Настройки.НаличиеПорядкаУЭлемента(ЭлементСтруктуры) Тогда
		
		ЛокальныйПорядок = Истина;
		Элементы.СтраницыПорядка.ТекущаяСтраница = Элементы.НастройкиПорядка;
					
	Иначе
		
		ЛокальныйПорядок = Ложь;
		Элементы.СтраницыПорядка.ТекущаяСтраница = Элементы.ОтключенныеНастройкиПорядка;
					
	КонецЕсли;
			
	Элементы.ЛокальныйПорядок.ТолькоПросмотр = Ложь;
		
КонецПроцедуры

&НаКлиенте
Процедура ПорядокНедоступен()
	
	ЛокальныйПорядок = Ложь;
	Элементы.ЛокальныйПорядок.ТолькоПросмотр = Истина;
	Элементы.СтраницыПорядка.ТекущаяСтраница = Элементы.НедоступныеНастройкиПорядка;
		
КонецПроцедуры

&НаКлиенте
Процедура УсловноеОформлениеДоступно(ЭлементСтруктуры)
	
	Если КомпоновщикНастроек.Настройки.НаличиеУсловногоОформленияУЭлемента(ЭлементСтруктуры) Тогда
		
		ЛокальноеУсловноеОформление = Истина;
		Элементы.СтраницыУсловногоОформления.ТекущаяСтраница = Элементы.НастройкиУсловногоОформления;
					
	Иначе
		
		ЛокальноеУсловноеОформление = Ложь;
		Элементы.СтраницыУсловногоОформления.ТекущаяСтраница = Элементы.ОтключенныеНастройкиУсловногоОформления;
					
	КонецЕсли;
			
	Элементы.ЛокальноеУсловноеОформление.ТолькоПросмотр = Ложь;
		
КонецПроцедуры

&НаКлиенте
Процедура УсловноеОформлениеНедоступно()
	
	ЛокальноеУсловноеОформление = Ложь;
	Элементы.ЛокальноеУсловноеОформление.ТолькоПросмотр = Истина;
	Элементы.СтраницыУсловногоОформления.ТекущаяСтраница = Элементы.НедоступныеНастройкиУсловногоОформления;
		
КонецПроцедуры

&НаКлиенте
Процедура ПараметрыВыводаДоступны(ЭлементСтруктуры)
	
	Если КомпоновщикНастроек.Настройки.НаличиеПараметровВыводаУЭлемента(ЭлементСтруктуры) Тогда
		
		ЛокальныеПараметрыВывода = Истина;
		Элементы.СтраницыПараметровВывода.ТекущаяСтраница = Элементы.НастройкиПараметровВывода;
					
	Иначе
		
		ЛокальныеПараметрыВывода = Ложь;
		Элементы.СтраницыПараметровВывода.ТекущаяСтраница = Элементы.ОтключенныеНастройкиПараметровВывода;
					
	КонецЕсли;
			
	Элементы.ЛокальныеПараметрыВывода.ТолькоПросмотр = Ложь;
		
КонецПроцедуры

&НаКлиенте
Процедура ПараметрыВыводаНедоступны()
	
	ЛокальныеПараметрыВывода = Ложь;
	Элементы.ЛокальныеПараметрыВывода.ТолькоПросмотр = Истина;
	Элементы.СтраницыПараметровВывода.ТекущаяСтраница = Элементы.НедоступныеНастройкиПараметровВывода;
	
КонецПроцедуры

&НаКлиенте
Процедура КомпоновщикНастроекНастройкиПриАктивизацииПоля(Элемент)
		
	Перем ВыбраннаяСтраница;
	
	Если Элементы.КомпоновщикНастроекНастройки.ТекущийЭлемент.Имя = "КомпоновщикНастроекНастройкиНаличиеВыбора" Тогда
		
		ВыбраннаяСтраница = Элементы.СтраницаПолейВыбора;
		
	ИначеЕсли Элементы.КомпоновщикНастроекНастройки.ТекущийЭлемент.Имя = "КомпоновщикНастроекНастройкиНаличиеОтбора" Тогда
		
		ВыбраннаяСтраница = Элементы.СтраницаОтбора;
		
	ИначеЕсли Элементы.КомпоновщикНастроекНастройки.ТекущийЭлемент.Имя = "КомпоновщикНастроекНастройкиНаличиеПорядка" Тогда
		
		ВыбраннаяСтраница = Элементы.СтраницаПорядка;
		
	ИначеЕсли Элементы.КомпоновщикНастроекНастройки.ТекущийЭлемент.Имя = "КомпоновщикНастроекНастройкиНаличиеУсловногоОформления" Тогда
		
		ВыбраннаяСтраница = Элементы.СтраницаУсловногоОформления;
		
	ИначеЕсли Элементы.КомпоновщикНастроекНастройки.ТекущийЭлемент.Имя = "КомпоновщикНастроекНастройкиНаличиеПараметровВывода" Тогда
		
		ВыбраннаяСтраница = Элементы.СтраницаПараметровВывода;
		
	КонецЕсли;
	
	Если ВыбраннаяСтраница <> Неопределено Тогда
		
		Элементы.СтраницыНастроек.ТекущаяСтраница = ВыбраннаяСтраница;
		
	КонецЕсли;

КонецПроцедуры

&НаКлиенте
Процедура КомпоновщикНастроекНастройкиПриАктивизацииСтроки(Элемент)
	
	ЭлементСтруктуры = КомпоновщикНастроек.Настройки.ПолучитьОбъектПоИдентификатору(Элементы.КомпоновщикНастроекНастройки.ТекущаяСтрока);
	ТипЭлемента = ТипЗнч(ЭлементСтруктуры); 
	
	Если ТипЭлемента = Неопределено  ИЛИ
		 ТипЭлемента = Тип("КоллекцияЭлементовСтруктурыДиаграммыКомпоновкиДанных") ИЛИ
		 ТипЭлемента = Тип("КоллекцияЭлементовСтруктурыТаблицыКомпоновкиДанных") Тогда
		 
		ПоляГруппировкиНедоступны();
		ВыбранныеПоляНедоступны();
		ОтборНедоступен();
		ПорядокНедоступен();
		УсловноеОформлениеНедоступно();
		ПараметрыВыводаНедоступны();
		
	ИначеЕсли ТипЭлемента = Тип("НастройкиКомпоновкиДанных") ИЛИ
		 	  ТипЭлемента = Тип("НастройкиВложенногоОбъектаКомпоновкиДанных") Тогда
		
		ПоляГруппировкиНедоступны();
		
		ЛокальныеВыбранныеПоля = Истина;
		Элементы.ЛокальныеВыбранныеПоля.ТолькоПросмотр = Истина;
		Элементы.СтраницыПолейВыбора.ТекущаяСтраница = Элементы.НастройкиВыбранныхПолей;
		
		ЛокальныйОтбор = Истина;
		Элементы.ЛокальныйОтбор.ТолькоПросмотр = Истина;
		Элементы.СтраницыОтбора.ТекущаяСтраница = Элементы.НастройкиОтбора;
		
		ЛокальныйПорядок = Истина;
		Элементы.ЛокальныйПорядок.ТолькоПросмотр = Истина;
		Элементы.СтраницыПорядка.ТекущаяСтраница = Элементы.НастройкиПорядка;
		
		ЛокальноеУсловноеОформление = Истина;
		Элементы.ЛокальноеУсловноеОформление.ТолькоПросмотр = Истина;
		Элементы.СтраницыУсловногоОформления.ТекущаяСтраница = Элементы.НастройкиУсловногоОформления;
		
		ЛокальныеПараметрыВывода = Истина;
		Элементы.ЛокальныеПараметрыВывода.ТолькоПросмотр = Истина;
		Элементы.СтраницыПараметровВывода.ТекущаяСтраница = Элементы.НастройкиПараметровВывода;
		
	ИначеЕсли ТипЭлемента = Тип("ГруппировкаКомпоновкиДанных") ИЛИ
		 	  ТипЭлемента = Тип("ГруппировкаТаблицыКомпоновкиДанных") ИЛИ
		 	  ТипЭлемента = Тип("ГруппировкаДиаграммыКомпоновкиДанных") Тогда
		 
		Элементы.СтраницыПолейГруппировки.ТекущаяСтраница = Элементы.НастройкиПолейГруппировки;
			
		ВыбранныеПоляДоступны(ЭлементСтруктуры);
		ОтборДоступен(ЭлементСтруктуры);
		ПорядокДоступен(ЭлементСтруктуры);
		УсловноеОформлениеДоступно(ЭлементСтруктуры);
		ПараметрыВыводаДоступны(ЭлементСтруктуры);
		
	ИначеЕсли ТипЭлемента = Тип("ТаблицаКомпоновкиДанных") ИЛИ
		      ТипЭлемента = Тип("ДиаграммаКомпоновкиДанных") Тогда
		
		ПоляГруппировкиНедоступны();
		ВыбранныеПоляДоступны(ЭлементСтруктуры);
		ОтборНедоступен();
		ПорядокНедоступен();
		УсловноеОформлениеДоступно(ЭлементСтруктуры);
		ПараметрыВыводаДоступны(ЭлементСтруктуры);
		
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура ПерейтиКОтчету(Элемент)
	
	ЭлементСтруктуры = КомпоновщикНастроек.Настройки.ПолучитьОбъектПоИдентификатору(Элементы.КомпоновщикНастроекНастройки.ТекущаяСтрока);
	НастройкиЭлемента =  КомпоновщикНастроек.Настройки.НастройкиЭлемента(ЭлементСтруктуры);
	Элементы.КомпоновщикНастроекНастройки.ТекущаяСтрока = КомпоновщикНастроек.Настройки.ПолучитьИдентификаторПоОбъекту(НастройкиЭлемента);
	
КонецПроцедуры

&НаКлиенте
Процедура ЛокальныеВыбранныеПоляПриИзменении(Элемент)
	
	Если ЛокальныеВыбранныеПоля Тогда
		
		Элементы.СтраницыПолейВыбора.ТекущаяСтраница = Элементы.НастройкиВыбранныхПолей;
			
	Иначе
		
		Элементы.СтраницыПолейВыбора.ТекущаяСтраница = Элементы.ОтключенныеНастройкиВыбранныхПолей;

		ЭлементСтруктуры = КомпоновщикНастроек.Настройки.ПолучитьОбъектПоИдентификатору(Элементы.КомпоновщикНастроекНастройки.ТекущаяСтрока);
		КомпоновщикНастроек.Настройки.ОчиститьВыборЭлемента(ЭлементСтруктуры);
		
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура ЛокальныйОтборПриИзменении(Элемент)
	
	Если ЛокальныйОтбор Тогда
		
		Элементы.СтраницыОтбора.ТекущаяСтраница = Элементы.НастройкиОтбора;
			
	Иначе
		
		Элементы.СтраницыОтбора.ТекущаяСтраница = Элементы.ОтключенныеНастройкиОтбора;

		ЭлементСтруктуры = КомпоновщикНастроек.Настройки.ПолучитьОбъектПоИдентификатору(Элементы.КомпоновщикНастроекНастройки.ТекущаяСтрока);
		КомпоновщикНастроек.Настройки.ОчиститьОтборЭлемента(ЭлементСтруктуры);
		
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура ЛокальныйПорядокПриИзменении(Элемент)
	
	Если ЛокальныйПорядок Тогда
		
		Элементы.СтраницыПорядка.ТекущаяСтраница = Элементы.НастройкиПорядка;
					
	Иначе
		
		Элементы.СтраницыПорядка.ТекущаяСтраница = Элементы.ОтключенныеНастройкиПорядка;
					
		ЭлементСтруктуры = КомпоновщикНастроек.Настройки.ПолучитьОбъектПоИдентификатору(Элементы.КомпоновщикНастроекНастройки.ТекущаяСтрока);
		КомпоновщикНастроек.Настройки.ОчиститьПорядокЭлемента(ЭлементСтруктуры);
		
	КонецЕсли;
				
КонецПроцедуры

&НаКлиенте
Процедура ЛокальноеУсловноеОформлениеПриИзменении(Элемент)

	Если ЛокальноеУсловноеОформление Тогда
		
		Элементы.СтраницыУсловногоОформления.ТекущаяСтраница = Элементы.НастройкиУсловногоОформления;
					
	Иначе
		
		Элементы.СтраницыУсловногоОформления.ТекущаяСтраница = Элементы.ОтключенныеНастройкиУсловногоОформления;
					
		ЭлементСтруктуры = КомпоновщикНастроек.Настройки.ПолучитьОбъектПоИдентификатору(Элементы.КомпоновщикНастроекНастройки.ТекущаяСтрока);
		КомпоновщикНастроек.Настройки.ОчиститьУсловноеОформлениеЭлемента(ЭлементСтруктуры);
					
	КонецЕсли;
				
КонецПроцедуры

&НаКлиенте
Процедура ЛокальныеПараметрыВыводаПриИзменении(Элемент)
	
	Если ЛокальныеПараметрыВывода Тогда
		
		Элементы.СтраницыПараметровВывода.ТекущаяСтраница = Элементы.НастройкиПараметровВывода;
					
	Иначе
		
		Элементы.СтраницыПараметровВывода.ТекущаяСтраница = Элементы.ОтключенныеНастройкиПараметровВывода;
					
		ЭлементСтруктуры = КомпоновщикНастроек.Настройки.ПолучитьОбъектПоИдентификатору(Элементы.КомпоновщикНастроекНастройки.ТекущаяСтрока);
		КомпоновщикНастроек.Настройки.ОчиститьПараметрыВыводаЭлемента(ЭлементСтруктуры);
	КонецЕсли;
			
КонецПроцедуры
	
#КонецОбласти

#Область ФиксированныеНастройки

&НаКлиенте
Процедура ПоляГруппировкиНедоступныФикс()
	
	Элементы.СтраницыПолейГруппировкиФикс.ТекущаяСтраница = Элементы.НедоступныеНастройкиПолейГруппировкиФикс;
					
КонецПроцедуры

&НаКлиенте
Процедура ВыбранныеПоляДоступныФикс(ЭлементСтруктуры)
	
	Если КомпоновщикНастроек.ФиксированныеНастройки.НаличиеВыбораУЭлемента(ЭлементСтруктуры) Тогда
				
		ЛокальныеВыбранныеПоляФикс = Истина;
		Элементы.СтраницыПолейВыбораФикс.ТекущаяСтраница = Элементы.НастройкиВыбранныхПолейФикс;
			
	Иначе
			
		ЛокальныеВыбранныеПоляФикс = Ложь;
		Элементы.СтраницыПолейВыбораФикс.ТекущаяСтраница = Элементы.ОтключенныеНастройкиВыбранныхПолейФикс;
			
	КонецЕсли;
		
	Элементы.ЛокальныеВыбранныеПоляФикс.ТолькоПросмотр = Ложь;
					
КонецПроцедуры

&НаКлиенте
Процедура ВыбранныеПоляНедоступныФикс()
	
	ЛокальныеВыбранныеПоляФикс = Ложь;
	Элементы.ЛокальныеВыбранныеПоляФикс.ТолькоПросмотр = Истина;
	Элементы.СтраницыПолейВыбораФикс.ТекущаяСтраница = Элементы.НедоступныеНастройкиВыбранныхПолейФикс;
					
КонецПроцедуры

&НаКлиенте
Процедура ОтборДоступенФикс(ЭлементСтруктуры)
	
	Если КомпоновщикНастроек.ФиксированныеНастройки.НаличиеОтбораУЭлемента(ЭлементСтруктуры) Тогда
		
		ЛокальныйОтборФикс = Истина;
		Элементы.СтраницыОтбораФикс.ТекущаяСтраница = Элементы.НастройкиОтбораФикс;
			
	Иначе
		
		ЛокальныйОтборФикс = Ложь;
		Элементы.СтраницыОтбораФикс.ТекущаяСтраница = Элементы.ОтключенныеНастройкиОтбораФикс;
			
	КонецЕсли;
			
	Элементы.ЛокальныйОтборФикс.ТолькоПросмотр = Ложь;
	
КонецПроцедуры
		
&НаКлиенте
Процедура ОтборНедоступенФикс()
	
	ЛокальныйОтборФикс = Ложь;
	Элементы.ЛокальныйОтборФикс.ТолькоПросмотр = Истина;
	Элементы.СтраницыОтбораФикс.ТекущаяСтраница = Элементы.НедоступныеНастройкиОтбораФикс;
		
КонецПроцедуры

&НаКлиенте
Процедура ПорядокДоступенФикс(ЭлементСтруктуры)
	
	Если КомпоновщикНастроек.ФиксированныеНастройки.НаличиеПорядкаУЭлемента(ЭлементСтруктуры) Тогда
		
		ЛокальныйПорядокФикс = Истина;
		Элементы.СтраницыПорядкаФикс.ТекущаяСтраница = Элементы.НастройкиПорядкаФикс;
					
	Иначе
		
		ЛокальныйПорядокФикс = Ложь;
		Элементы.СтраницыПорядкаФикс.ТекущаяСтраница = Элементы.ОтключенныеНастройкиПорядкаФикс;
					
	КонецЕсли;
			
	Элементы.ЛокальныйПорядокФикс.ТолькоПросмотр = Ложь;
		
КонецПроцедуры

&НаКлиенте
Процедура ПорядокНедоступенФикс()
	
	ЛокальныйПорядокФикс = Ложь;
	Элементы.ЛокальныйПорядокФикс.ТолькоПросмотр = Истина;
	Элементы.СтраницыПорядкаФикс.ТекущаяСтраница = Элементы.НедоступныеНастройкиПорядкаФикс;
		
КонецПроцедуры

&НаКлиенте
Процедура УсловноеОформлениеДоступноФикс(ЭлементСтруктуры)
	
	Если КомпоновщикНастроек.ФиксированныеНастройки.НаличиеУсловногоОформленияУЭлемента(ЭлементСтруктуры) Тогда
		
		ЛокальноеУсловноеОформлениеФикс = Истина;
		Элементы.СтраницыУсловногоОформленияФикс.ТекущаяСтраница = Элементы.НастройкиУсловногоОформленияФикс;
					
	Иначе
		
		ЛокальноеУсловноеОформлениеФикс = Ложь;
		Элементы.СтраницыУсловногоОформленияФикс.ТекущаяСтраница = Элементы.ОтключенныеНастройкиУсловногоОформленияФикс;
					
	КонецЕсли;
			
	Элементы.ЛокальноеУсловноеОформлениеФикс.ТолькоПросмотр = Ложь;
		
КонецПроцедуры

&НаКлиенте
Процедура УсловноеОформлениеНедоступноФикс()
	
	ЛокальноеУсловноеОформлениеФикс = Ложь;
	Элементы.ЛокальноеУсловноеОформлениеФикс.ТолькоПросмотр = Истина;
	Элементы.СтраницыУсловногоОформленияФикс.ТекущаяСтраница = Элементы.НедоступныеНастройкиУсловногоОформленияФикс;
		
КонецПроцедуры

&НаКлиенте
Процедура ПараметрыВыводаДоступныФикс(ЭлементСтруктуры)
	
	Если КомпоновщикНастроек.ФиксированныеНастройки.НаличиеПараметровВыводаУЭлемента(ЭлементСтруктуры) Тогда
		
		ЛокальныеПараметрыВыводаФикс = Истина;
		Элементы.СтраницыПараметровВыводаФикс.ТекущаяСтраница = Элементы.НастройкиПараметровВыводаФикс;
					
	Иначе
		
		ЛокальныеПараметрыВыводаФикс = Ложь;
		Элементы.СтраницыПараметровВыводаФикс.ТекущаяСтраница = Элементы.ОтключенныеНастройкиПараметровВыводаФикс;
					
	КонецЕсли;
			
	Элементы.ЛокальныеПараметрыВыводаФикс.ТолькоПросмотр = Ложь;
		
КонецПроцедуры

&НаКлиенте
Процедура ПараметрыВыводаНедоступныФикс()
	
	ЛокальныеПараметрыВыводаФикс = Ложь;
	Элементы.ЛокальныеПараметрыВыводаФикс.ТолькоПросмотр = Истина;
	Элементы.СтраницыПараметровВыводаФикс.ТекущаяСтраница = Элементы.НедоступныеНастройкиПараметровВыводаФикс;
	
КонецПроцедуры

&НаКлиенте
Процедура КомпоновщикНастроекНастройкиПриАктивизацииПоляФикс(Элемент)
		
	Перем ВыбраннаяСтраница;
	
	Если Элементы.КомпоновщикНастроекНастройкиФикс.ТекущийЭлемент.Имя = "КомпоновщикНастроекНастройкиНаличиеВыбораФикс" Тогда
		
		ВыбраннаяСтраница = Элементы.СтраницаПолейВыбораФикс;
		
	ИначеЕсли Элементы.КомпоновщикНастроекНастройкиФикс.ТекущийЭлемент.Имя = "КомпоновщикНастроекНастройкиНаличиеОтбораФикс" Тогда
		
		ВыбраннаяСтраница = Элементы.СтраницаОтбораФикс;
		
	ИначеЕсли Элементы.КомпоновщикНастроекНастройкиФикс.ТекущийЭлемент.Имя = "КомпоновщикНастроекНастройкиНаличиеПорядкаФикс" Тогда
		
		ВыбраннаяСтраница = Элементы.СтраницаПорядкаФикс;
		
	ИначеЕсли Элементы.КомпоновщикНастроекНастройкиФикс.ТекущийЭлемент.Имя = "КомпоновщикНастроекНастройкиНаличиеУсловногоОформленияФикс" Тогда
		
		ВыбраннаяСтраница = Элементы.СтраницаУсловногоОформленияФикс;
		
	ИначеЕсли Элементы.КомпоновщикНастроекНастройкиФикс.ТекущийЭлемент.Имя = "КомпоновщикНастроекНастройкиНаличиеПараметровВыводаФикс" Тогда
		
		ВыбраннаяСтраница = Элементы.СтраницаПараметровВыводаФикс;
		
	КонецЕсли;
	
	Если ВыбраннаяСтраница <> Неопределено Тогда
		
		Элементы.СтраницыНастроекФикс.ТекущаяСтраница = ВыбраннаяСтраница;
		
	КонецЕсли;

КонецПроцедуры

&НаКлиенте
Процедура КомпоновщикНастроекНастройкиПриАктивизацииСтрокиФикс(Элемент)
	
	ЭлементСтруктуры = КомпоновщикНастроек.ФиксированныеНастройки.ПолучитьОбъектПоИдентификатору(Элементы.КомпоновщикНастроекНастройкиФикс.ТекущаяСтрока);
	ТипЭлемента = ТипЗнч(ЭлементСтруктуры); 
	
	Если ТипЭлемента = Неопределено  ИЛИ
		 ТипЭлемента = Тип("КоллекцияЭлементовСтруктурыДиаграммыКомпоновкиДанных") ИЛИ
		 ТипЭлемента = Тип("КоллекцияЭлементовСтруктурыТаблицыКомпоновкиДанных") Тогда
		 
		ПоляГруппировкиНедоступныФикс();
		ВыбранныеПоляНедоступныФикс();
		ОтборНедоступенФикс();
		ПорядокНедоступенФикс();
		УсловноеОформлениеНедоступноФикс();
		ПараметрыВыводаНедоступныФикс();
		
	ИначеЕсли ТипЭлемента = Тип("НастройкиКомпоновкиДанных") ИЛИ
		 	  ТипЭлемента = Тип("НастройкиВложенногоОбъектаКомпоновкиДанных") Тогда
		
		ПоляГруппировкиНедоступныФикс();
		
		ЛокальныеВыбранныеПоляФикс = Истина;
		Элементы.ЛокальныеВыбранныеПоляФикс.ТолькоПросмотр = Истина;
		Элементы.СтраницыПолейВыбораФикс.ТекущаяСтраница = Элементы.НастройкиВыбранныхПолейФикс;
		
		ЛокальныйОтборФикс = Истина;
		Элементы.ЛокальныйОтборФикс.ТолькоПросмотр = Истина;
		Элементы.СтраницыОтбораФикс.ТекущаяСтраница = Элементы.НастройкиОтбораФикс;
		
		ЛокальныйПорядокФикс = Истина;
		Элементы.ЛокальныйПорядокФикс.ТолькоПросмотр = Истина;
		Элементы.СтраницыПорядкаФикс.ТекущаяСтраница = Элементы.НастройкиПорядкаФикс;
		
		ЛокальноеУсловноеОформлениеФикс = Истина;
		Элементы.ЛокальноеУсловноеОформлениеФикс.ТолькоПросмотр = Истина;
		Элементы.СтраницыУсловногоОформленияФикс.ТекущаяСтраница = Элементы.НастройкиУсловногоОформленияФикс;
		
		ЛокальныеПараметрыВыводаФикс = Истина;
		Элементы.ЛокальныеПараметрыВыводаФикс.ТолькоПросмотр = Истина;
		Элементы.СтраницыПараметровВыводаФикс.ТекущаяСтраница = Элементы.НастройкиПараметровВыводаФикс;
		
	ИначеЕсли ТипЭлемента = Тип("ГруппировкаКомпоновкиДанных") ИЛИ
		 	  ТипЭлемента = Тип("ГруппировкаТаблицыКомпоновкиДанных") ИЛИ
		 	  ТипЭлемента = Тип("ГруппировкаДиаграммыКомпоновкиДанных") Тогда
		 
		Элементы.СтраницыПолейГруппировкиФикс.ТекущаяСтраница = Элементы.НастройкиПолейГруппировкиФикс;
			
		ВыбранныеПоляДоступныФикс(ЭлементСтруктуры);
		ОтборДоступенФикс(ЭлементСтруктуры);
		ПорядокДоступенФикс(ЭлементСтруктуры);
		УсловноеОформлениеДоступноФикс(ЭлементСтруктуры);
		ПараметрыВыводаДоступныФикс(ЭлементСтруктуры);
		
	ИначеЕсли ТипЭлемента = Тип("ТаблицаКомпоновкиДанных") ИЛИ
		      ТипЭлемента = Тип("ДиаграммаКомпоновкиДанных") Тогда
		
		ПоляГруппировкиНедоступныФикс();
		ВыбранныеПоляДоступныФикс(ЭлементСтруктуры);
		ОтборНедоступенФикс();
		ПорядокНедоступенФикс();
		УсловноеОформлениеДоступноФикс(ЭлементСтруктуры);
		ПараметрыВыводаДоступныФикс(ЭлементСтруктуры);
		
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура ПерейтиКОтчетуФикс(Элемент)
	
	ЭлементСтруктуры = КомпоновщикНастроек.ФиксированныеНастройки.ПолучитьОбъектПоИдентификатору(Элементы.КомпоновщикНастроекНастройкиФикс.ТекущаяСтрока);
	НастройкиЭлемента =  КомпоновщикНастроек.ФиксированныеНастройки.НастройкиЭлемента(ЭлементСтруктуры);
	Элементы.КомпоновщикНастроекНастройкиФикс.ТекущаяСтрока = КомпоновщикНастроек.ФиксированныеНастройки.ПолучитьИдентификаторПоОбъекту(НастройкиЭлемента);
	
КонецПроцедуры

&НаКлиенте
Процедура ЛокальныеВыбранныеПоляПриИзмененииФикс(Элемент)
	
	Если ЛокальныеВыбранныеПоляФикс Тогда
		
		Элементы.СтраницыПолейВыбораФикс.ТекущаяСтраница = Элементы.НастройкиВыбранныхПолейФикс;
			
	Иначе
		
		Элементы.СтраницыПолейВыбораФикс.ТекущаяСтраница = Элементы.ОтключенныеНастройкиВыбранныхПолейФикс;

		ЭлементСтруктурыФикс = КомпоновщикНастроек.ФиксированныеНастройки.ПолучитьОбъектПоИдентификатору(Элементы.КомпоновщикНастроекНастройкиФикс.ТекущаяСтрока);
		КомпоновщикНастроек.ФиксированныеНастройки.ОчиститьВыборЭлемента(ЭлементСтруктурыФикс);
		
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура ЛокальныйОтборПриИзмененииФикс(Элемент)
	
	Если ЛокальныйОтборФикс Тогда
		
		Элементы.СтраницыОтбораФикс.ТекущаяСтраница = Элементы.НастройкиОтбораФикс;
			
	Иначе
		
		Элементы.СтраницыОтбораФикс.ТекущаяСтраница = Элементы.ОтключенныеНастройкиОтбораФикс;

		ЭлементСтруктурыФикс = КомпоновщикНастроек.ФиксированныеНастройки.ПолучитьОбъектПоИдентификатору(Элементы.КомпоновщикНастроекНастройкиФикс.ТекущаяСтрока);
		КомпоновщикНастроек.ФиксированныеНастройки.ОчиститьОтборЭлемента(ЭлементСтруктурыФикс);
		
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура ЛокальныйПорядокПриИзмененииФикс(Элемент)
	
	Если ЛокальныйПорядокФикс Тогда
		
		Элементы.СтраницыПорядкаФикс.ТекущаяСтраница = Элементы.НастройкиПорядкаФикс;
					
	Иначе
		
		Элементы.СтраницыПорядкаФикс.ТекущаяСтраница = Элементы.ОтключенныеНастройкиПорядкаФикс;
					
		ЭлементСтруктурыФикс = КомпоновщикНастроек.ФиксированныеНастройки.ПолучитьОбъектПоИдентификатору(Элементы.КомпоновщикНастроекНастройкиФикс.ТекущаяСтрока);
		КомпоновщикНастроек.ФиксированныеНастройки.ОчиститьПорядокЭлемента(ЭлементСтруктурыФикс);
		
	КонецЕсли;
				
КонецПроцедуры

&НаКлиенте
Процедура ЛокальноеУсловноеОформлениеПриИзмененииФикс(Элемент)

	Если ЛокальноеУсловноеОформлениеФикс Тогда
		
		Элементы.СтраницыУсловногоОформленияФикс.ТекущаяСтраница = Элементы.НастройкиУсловногоОформленияФикс;
					
	Иначе
		
		Элементы.СтраницыУсловногоОформленияФикс.ТекущаяСтраница = Элементы.ОтключенныеНастройкиУсловногоОформленияФикс;
					
		ЭлементСтруктурыФикс = КомпоновщикНастроек.ФиксированныеНастройки.ПолучитьОбъектПоИдентификатору(Элементы.КомпоновщикНастроекНастройкиФикс.ТекущаяСтрока);
		КомпоновщикНастроек.ФиксированныеНастройки.ОчиститьУсловноеОформлениеЭлемента(ЭлементСтруктурыФикс);
					
	КонецЕсли;
				
КонецПроцедуры

&НаКлиенте
Процедура ЛокальныеПараметрыВыводаПриИзмененииФикс(Элемент)
	
	Если ЛокальныеПараметрыВыводаФикс Тогда
		
		Элементы.СтраницыПараметровВыводаФикс.ТекущаяСтраница = Элементы.НастройкиПараметровВыводаФикс;
					
	Иначе
		
		Элементы.СтраницыПараметровВыводаФикс.ТекущаяСтраница = Элементы.ОтключенныеНастройкиПараметровВыводаФикс;
					
		ЭлементСтруктурыФикс = КомпоновщикНастроек.ФиксированныеНастройки.ПолучитьОбъектПоИдентификатору(Элементы.КомпоновщикНастроекНастройкиФикс.ТекущаяСтрока);
		КомпоновщикНастроек.ФиксированныеНастройки.ОчиститьПараметрыВыводаЭлемента(ЭлементСтруктурыФикс);
	КонецЕсли;
			
КонецПроцедуры
	
#КонецОбласти
