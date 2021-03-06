Процедура ОбработкаПроведения(Отказ,Режим)
	//{{__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
	//Данный фрагмент построен конструктором.
	//При повторном использовании конструктора, внесенные вручную данные будут утеряны!

	// регистр РегистрНачисленияЗарплаты
	Движения.РегистрНачисленияЗарплаты.Записывать = Истина;
	Движения.ЗадолженностьПередСотрудниками.Записывать = Истина;
	Для Каждого ТекСтрокаСотрудники из Сотрудники Цикл
		Движение = Движения.РегистрНачисленияЗарплаты.Добавить();
		Движение.Сторно = Ложь;
		Движение.ВидРасчета = ПланыВидовРасчета.Начисления.ПремияСуммой;
		Движение.ПериодРегистрации = Дата;
		Движение.ПериодДействияНачало = НачалоМесяца(Дата);
		Движение.ПериодДействияКонец = КонецМесяца(Дата);
		Движение.Сотрудник = ТекСтрокаСотрудники.Сотрудник;
		Движение.Результат = ТекСтрокаСотрудники.СуммаПремии;

		Движение = Движения.ЗадолженностьПередСотрудниками.Добавить();
		Движение.Период = Дата;
		Движение.ВидДвижения = ВидДвиженияНакопления.Приход;
		Движение.Сотрудник = ТекСтрокаСотрудники.Сотрудник;
		Движение.Долг = ТекСтрокаСотрудники.СуммаПремии;
	КонецЦикла;

	//}}__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
КонецПроцедуры