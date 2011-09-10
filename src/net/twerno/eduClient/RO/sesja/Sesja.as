package net.twerno.eduClient.RO.sesja {
	import mx.collections.ArrayCollection;
	
	import net.twerno.eduClient.RO.ROOEntity;
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.sesja.entity.Sesja")]
	public class Sesja extends ROOEntity {
//		@NotNull
		public var uczenId:String;
		
//		@NotNull
		public var zadaneZadanieId:String;
		
//		@Temporal(TemporalType.TIMESTAMP)
//		@DateTimeFormat(style = "M-")
		public var dtOtwarcia:Date;
		
//		@Temporal(TemporalType.TIMESTAMP)
//		@DateTimeFormat(style = "M-")
		public var dtZamkniecia:Date;
		
//		@NotNull
		public var stanSesji:String;
		
//		@NotNull
//		public var wynik:Number;
		
//		@OneToMany(mappedBy="sesjaId")
		public var odpowiedzi:ArrayCollection = new ArrayCollection();
		
//		@OneToOne
		public var wynik:Sesja_Wynik;
	}
}