package net.twerno.eduClient.RO.sesja {
	import mx.collections.ArrayCollection;
	
	import net.twerno.eduClient.RO.zadanie.ZadaneZadanie;

	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.sesja.ro.SesjaOtwartaRO")]
	public class SesjaOtwartaRO {
		
		public var sesjaId:String;

		public var zadanie:ZadaneZadanie;

		public var pytania:ArrayCollection = new ArrayCollection();
		
		
		public function SesjaOtwartaRO() {
		}
	}
}