package net.twerno.eduClient.RO.pytanie {
	import net.twerno.eduClient.RO.ROOEntity;
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.pytanie.entity.OdpPytanieZamkniete")]
	public class OdpPytanieZamkniete extends ROOEntity {
		
//		@NotNull
//		@ManyToOne
		public var pytanieZamkniete:PytanieZamkniete;
		
//		@NotNull
		public var stOdpowiedz:String;
		
//		@NotNull 
		public var tnPoprawna:Boolean;
		
		public function OdpPytanieZamkniete() {
			super();
		}
	}
}