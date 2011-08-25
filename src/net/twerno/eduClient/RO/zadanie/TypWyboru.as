package net.twerno.eduClient.RO.zadanie {
	import net.twerno.eduClient.RO.ROOEntity;

	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.zadanie.entity.TypWyboru")]
	public class TypWyboru extends ROOEntity {
		
//		@NotNull
		public var typWyboruPytan:String;
		
		// procentowa wartosc - ile pytan z zadania wybierane jest sposrod pytan, ktorych uczne jeszcze nie zna
		// procentowa ilosc poprawnych odpowiedzi w ostatnich 10zadaniach jest mniejsza niz 45%
//		@NotNull
		public var pytaniaNieznane:int = 0;
		
//		@NotNull
		// procentowa wartosc - ile pytan z zadania wybierane jest sposrod pytan, ktore uczen zna niezle
		// procentowa ilosc poprawnych odpowiedzi w ostatnich 10zadaniach jest wieksza niz 45%, ale mniejsza niz 80%
		public var pytaniaZnaneSlabo:int = 0;
		
//		@NotNull
		// procentowa wartosc - ile pytan z zadania wybierane jest sposrod pytan, ktore uczen zna dobrze
		// procentowa ilosc poprawnych odpowiedzi w ostatnich 10zadaniach jest wieksza niz 80%
		public var pytaniaZnaneDobrze:int = 0;
		
//		@NotNull
//		@OneToOne
		public var zadaneZadanie:ZadaneZadanie;
	}
}