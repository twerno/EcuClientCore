package net.twerno.eduClient.RO.sesja {
	import net.twerno.eduClient.RO.ROOEntity;
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.sesja.entity.KartaOdpowiedzi")]
	public class KartaOdpowiedzi extends ROOEntity {

//		@ManyToOne
//		@Column(name="sesjaId")
		public var sesja:Sesja;
		
//		@NotNull
		public var idPytanie:String;
		
//		@NotNull
		public var iloscProb:int;
		
//		@NotNull
		public var tnPoprawna:Boolean;
		
//		@Temporal(TemporalType.TIMESTAMP)
//		@DateTimeFormat(style = "M-")
		public var dtOdpowiedzi:Date;
	}
}