package net.twerno.eduClient.RO.pytanie {
	import net.twerno.eduClient.RO.ROOEntity;
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.pytanie.entity.PytaniePosortuj")]
	public class PytaniePosortuj extends ROOEntity {
//		@NotNull
		public var stElement:String;
		
//		@NotNull
		public var stKategoria:String;
		
//		@NotNull
//		@ManyToOne
		public var zbiorPytan:ZbiorPytan;
		
//		@NotNull
		public var usuniety:Boolean;
	}
}