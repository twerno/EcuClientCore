package net.twerno.eduClient.RO.pytanie {
	import mx.collections.ArrayCollection;
	
	import net.twerno.eduClient.RO.ROOEntity;
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.pytanie.entity.PytanieQuiz")]
	public class PytanieQuiz extends ROOEntity {
//		@NotNull
		public var trescPytania:String;
		
//		@NotNull
//		@OneToMany(cascade = CascadeType.ALL, mappedBy="pytanieQuiz")
		public var odpowiedzi:ArrayCollection; 
		
//		@NotNull
//		@ManyToOne
		public var zbiorPytan:ZbiorPytan;

//		@NotNull
		public var usuniety:Boolean;
	}
}