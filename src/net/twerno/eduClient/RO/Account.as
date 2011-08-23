package net.twerno.eduClient.RO {
	import mx.collections.ArrayCollection;
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.user.entities.Account")]
	public class Account extends ROOEntity {
		public var username : String;
		
		public var password : String;
		
		public var enabled : Boolean = true;
		
		public var roles : ArrayCollection = new ArrayCollection();
		
		public var grupy : ArrayCollection = new ArrayCollection();
	}
}