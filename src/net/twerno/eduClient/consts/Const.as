package net.twerno.eduClient.consts {
	public class Const {
		// ENUM: net.twerno.eduserver.user.RserRole
		public static const ROLE_ADMIN      : String = 'ROLE_ADMIN';
		public static const ROLE_UCZEN      : String = 'ROLE_UCZEN';
		public static const ROLE_NAUCZYCIEL : String = 'ROLE_NAUCZYCIEL';
		
		// ENUM: net.twerno.eduserver.zadanie.TypZadania
		public static const TYP_ZADANIA_QUIZ     : String = 'QUIZ'
		public static const TYP_ZADANIA_POSORTUJ : String = 'POSORTUJ'

		// ENUM: net.twerno.eduserver.zadanie.TypWyboruPytan
		public static const TYP_WYBORU_PYTAN_PO_KOLEI      : String = 'PO_KOLEI';
		public static const TYP_WYBORU_PYTAN_LOSOWO        : String = 'LOSOWO';
		public static const TYP_WYBORU_PYTAN_INTELIGENTNIE : String = 'INTELIGENTNIE';
		
		// ENUM: net.twerno.eduserver.sesja.SesjaStan
		public static const SESJA_STAN_ROZPOCZETA : String = 'SESJA_ROZPOCZETA';
		public static const SESJA_STAN_ZAKONCZONA : String = 'SESJA_ZAKONCZONA';
		public static const SESJA_STAN_PRZERWANA  : String = 'SESJA_PRZERWANA';
	}
}