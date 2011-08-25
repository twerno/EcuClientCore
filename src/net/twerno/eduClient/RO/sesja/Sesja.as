package net.twerno.eduClient.RO.sesja {
	import net.twerno.eduClient.RO.ROOEntity;
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.sesja.entity.Sesja")]
	public class Sesja extends ROOEntity {
//		@NotNull
		public var uczenId:uint;
		
//		@NotNull
		public var zadaneZadanieId:uint;
		
//		@Temporal(TemporalType.TIMESTAMP)
//		@DateTimeFormat(style = "M-")
		public var dtSesja:Date;
		
//		@NotNull
		public var stanSesji:String;
		
//		@NotNull
		public var wynik:Number;
		
//		@NotNull
		public var ukonczone:Boolean;
	}
}