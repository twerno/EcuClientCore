package net.twerno.eduClient.RO.zadanie {
	import net.twerno.eduClient.RO.ROOEntity;
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.zadanie.entity.Zadanie_ZbiorPytan")]
	public class Zadanie_ZbiorPytan extends ROOEntity {
		
//		@NotNull
		public var iloscPytan:int = 1;
		
//		@NotNull
//		@ManyToOne
		public var zadanie:Zadanie;
		
//		@NotNull
		public var zbiorPytanId:String;
	}
}