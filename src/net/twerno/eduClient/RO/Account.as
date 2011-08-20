package net.twerno.eduClient.RO {
	
	[RemoteClass(alias="net.twerno.eduserver.user.entities.Account")]
	public class Account extends ROOEntity {
		public var username : String;
		
		public var password : String;
		
		public var enabled : Boolean;
		
		public var roles : Array;
		
		public var grupy : Array;
	}
}