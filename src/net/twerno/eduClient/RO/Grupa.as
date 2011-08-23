package net.twerno.eduClient.RO {
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.user.entities.Grupa")]
	public class Grupa extends ROOEntity {
		
		public var nazwa : String;
	}
}