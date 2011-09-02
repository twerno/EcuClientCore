package net.twerno.eduClient.RO.zadanie {
	import net.twerno.eduClient.RO.ROOEntity;
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.zadanie.entity.ZadaneZadanie_ZbiorPytan")]
	public class ZadaneZadanie_ZbiorPytan extends ROOEntity {
		
		//		@NotNull
		public var coNajmniej:int = 0;
		
		//		@NotNull
		public var nieWiecejNiz:int = 0;
		
		//		@NotNull
		//		@ManyToOne
		public var zadanie:ZadaneZadanie;
		
		//		@NotNull
		public var zbiorPytanId:String;
	}
}