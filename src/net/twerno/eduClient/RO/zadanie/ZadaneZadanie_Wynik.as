package net.twerno.eduClient.RO.zadanie {
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.zadanie.ro.ZadaneZadanie_Wynik")]
	public class ZadaneZadanie_Wynik extends ZadaneZadanie_Stats {
		
		public var username:String;
	}
}