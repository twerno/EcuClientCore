package net.twerno.eduClient.RO.pytanie {
	import net.twerno.eduClient.RO.ROOEntity;
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.pytanie.entity.PytanieQuizOdpowiedz")]
	public class PytanieQuizOdpowiedz extends ROOEntity {
//		@NotNull
		public var trescOdpowiedzi:String;
		
//		@NotNull
		public var poprawnaOdpowiedz:Boolean;
		
//		@NotNull
//		@ManyToOne
		public var pytanieQuiz:PytanieQuiz;
	}
}