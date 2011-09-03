package net.twerno.eduClient.RO.pytanie {
	import mx.collections.ArrayCollection;
	import mx.utils.ObjectUtil;
	
	import net.twerno.eduClient.RO.ROOEntity;
	import net.twerno.eduClient.rpc.services.PytanieService;
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.pytanie.entity.PytanieZamkniete")]
	public class PytanieZamkniete extends ROOEntity {
		
//		@NotNull
		public var usuniety:Boolean;
		
//		@NotNull
		public var zbiorPytanId:String;
		
//		@NotNull
		public var trescPytania:String;
		
//		@NotNull
		public var typZadania:String;
		
//		@NotNull
		public var kategoria:String;
		
//		@NotNull
//		@OneToMany(cascade = CascadeType.ALL)
		public var odpowiedzi:ArrayCollection = new ArrayCollection();

		public function PytanieZamkniete() {
			super();
		}

		public function Kopia():PytanieZamkniete {
			return ObjectUtil.copy(this) as PytanieZamkniete;
		}
		
		public function dajOdpowiedz(odpId:String):OdpPytanieZamkniete {
			for each (var odp:OdpPytanieZamkniete in odpowiedzi)
				if (odp.id == odpId)
					return odp;
			return null;	
		}
	}
}