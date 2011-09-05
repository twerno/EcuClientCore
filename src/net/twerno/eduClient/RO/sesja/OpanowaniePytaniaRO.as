package net.twerno.eduClient.RO.sesja {
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.sesja.ro.OpanowaniePytaniaRO")]
	public class OpanowaniePytaniaRO {

		public var pytanieId:String;
		
		public var iloscPodejsc:int;
		
		public var correctAnswers:int;
	}
}