package net.twerno.eduClient.RO.zadanie {
	import mx.collections.ArrayCollection;

	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.zadanie.ro.ZadaneZadanie_Wynik_WithSkrot")]
	public class ZadaneZadanie_Wynik_WithSkrot extends ZadaneZadanie_Wynik {
		
		public var skroty_wynikow:ArrayCollection;
	}
}