package net.twerno.eduClient.RO.zadanie {
	import net.twerno.eduClient.RO.ROOEntity;
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.zadanie.entity.ZadaneZadanie_Zasady")]
	public class ZadaneZadanie_Zasady extends ROOEntity {
		
		public var czas_bronze:int;
		
		public var czas_silver:int;
		
		public var czas_gold:int;
		
		public var punkty_bronze:int;
		
		public var punkty_silver:int;
		
		public var punkty_gold:int;
	}
}