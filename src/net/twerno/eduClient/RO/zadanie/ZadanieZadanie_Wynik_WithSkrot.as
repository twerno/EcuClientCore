package net.twerno.eduClient.RO.zadanie {
	import mx.collections.ArrayCollection;

	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.zadanie.ro.ZadanieZadanie_Wynik_WithSkrot")]
	public class ZadanieZadanie_Wynik_WithSkrot extends ZadaneZadanie_Wynik {
		
		public var skroty_wynikow:ArrayCollection;
	}
}