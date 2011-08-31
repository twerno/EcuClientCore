package net.twerno.eduClient.consts {
	import pl.twerno.commLib.konwerter.KonwerterDataProvider;

	public class Const {
		// ENUM: net.twerno.eduserver.user.UserRole
		public static const ROLE_ADMIN      : String = 'ROLE_ADMIN';
		public static const ROLE_UCZEN      : String = 'ROLE_UCZEN';
		public static const ROLE_NAUCZYCIEL : String = 'ROLE_NAUCZYCIEL';

		public static const ROLE_KONWERTER : KonwerterDataProvider = 
			new KonwerterDataProvider(
				{label: 'administrator', val:ROLE_ADMIN},
				{label: 'uczeń',         val:ROLE_UCZEN},
				{label: 'nauczyciel',    val:ROLE_NAUCZYCIEL});
		


		
		// ENUM: net.twerno.eduserver.zadanie.TypZadania
		public static const TYP_ZADANIA_QUIZ     : String = 'QUIZ'
		public static const TYP_ZADANIA_POSORTUJ : String = 'POSORTUJ'

		public static const TYP_ZADANIA_KONWERTER : KonwerterDataProvider = 
			new KonwerterDataProvider(
				{label: 'quiz',     val:TYP_ZADANIA_QUIZ},
				{label: 'posortuj', val:TYP_ZADANIA_POSORTUJ});



		// ENUM: net.twerno.eduserver.zadanie.TypWyboruPytan
		public static const TYP_WYBORU_PYTAN_PO_KOLEI      : String = 'PO_KOLEI';
		public static const TYP_WYBORU_PYTAN_LOSOWO        : String = 'LOSOWO';
		public static const TYP_WYBORU_PYTAN_INTELIGENTNIE : String = 'INTELIGENTNIE';
		public static const TYP_WYBORU_KONWERTER : KonwerterDataProvider = 
			new KonwerterDataProvider(
				{label: 'po kolei',      val:TYP_WYBORU_PYTAN_PO_KOLEI},
				{label: 'losowo',        val:TYP_WYBORU_PYTAN_LOSOWO},
				{label: 'inteligentnie', val:TYP_WYBORU_PYTAN_INTELIGENTNIE});
		
		// ENUM: net.twerno.eduserver.sesja.SesjaStan
		public static const SESJA_STAN_ROZPOCZETA : String = 'SESJA_ROZPOCZETA';
		public static const SESJA_STAN_ZAKONCZONA : String = 'SESJA_ZAKONCZONA';
		public static const SESJA_STAN_PRZERWANA  : String = 'SESJA_PRZERWANA';

		
//		// ENUM: net.twerno.eduserver.zadanie.TrybSprawdzenia
		public static const TYP_SPRAWDZENIA_NATYCHMIAST       : String = 'NATYCHMIAST';
		public static const TYP_SPRAWDZENIA_PO_ZAKONCZENIU    : String = 'NA_KONCU';
		public static const TYP_SPRAWDZENIA_NATYCHMIAST_WUMUS : String = 'WYMUS_POPRAWNA_ODPOWIEDZ';
//		public static const TYP_SPRAWDZENIA_KONWERTER : KonwerterDataProvider = 
//			new KonwerterDataProvider(
//				{label: 'po kolei',      val:TYP_WYBORU_PYTAN_PO_KOLEI},
//				{label: 'losowo',        val:TYP_WYBORU_PYTAN_LOSOWO},
//				{label: 'inteligentnie', val:TYP_WYBORU_PYTAN_INTELIGENTNIE});
	}
}