package net.twerno.eduClient.RO.zadanie {
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.zadanie.ro.ZadaneZadanie_WithStats")]
	public class ZadaneZadanie_WithStats {
		
		public var zadanie:ZadaneZadanie;
		
		public var zadanie_stats:ZadaneZadanie_Stats;
	}
}