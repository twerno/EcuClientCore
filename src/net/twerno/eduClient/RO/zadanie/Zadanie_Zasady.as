package net.twerno.eduClient.RO.zadanie {
	import net.twerno.eduClient.RO.ROOEntity;
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.zadanie.entity.Zadanie_Zasady")]
	public class Zadanie_Zasady extends ROOEntity {
//		@NotNull
//		@ManyToOne
		public var zadanie:Zadanie;
		
		public var czas_bronze:int;
		
		public var czas_silver:int;
		
		public var czas_gold:int;
		
		public var bezblednie:Boolean;
		
		public var punkty_bronze:int;
		
		public var punkty_silver:int;
		
		public var punkty_gold:int;
	}
}