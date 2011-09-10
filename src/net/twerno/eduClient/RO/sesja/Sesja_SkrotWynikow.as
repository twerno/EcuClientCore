package net.twerno.eduClient.RO.sesja {
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.sesja.ro.Sesja_SkrotWynikow")]
	public class Sesja_SkrotWynikow {

		public var lp:int; 
		
		public var accountId:String;
		
		public var username:String;
		
		public var sesjaId:String;
		
		public var dt_otwarcia:Date;
		
		public var len:Number;
		
		public var wynik:Number;
	}
}