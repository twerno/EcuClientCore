package net.twerno.eduClient.RO.zadanie {
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.zadanie.ro.ZadaneZadanie_Stats")]
	public class ZadaneZadanie_Stats {
		
		public var czas_bronze:Boolean;
		
		public var czas_silver:Boolean;
		
		public var czas_gold:Boolean;
		
		public var bezblednie:Boolean;
		
		public var punkty_bronze:Boolean;
		
		public var punkty_silver:Boolean;
		
		public var punkty_gold:Boolean;
		
		public var ukonczone:Boolean;
		
		public var maxWynik:Number;
		
		public var minCzas:int;
		
		public var iloscPodejsc:int;
		
		public var iloscZdanych:int;
	}
}