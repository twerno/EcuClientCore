package net.twerno.eduClient.RO.user {
	import mx.collections.ArrayCollection;
	
	import net.twerno.eduClient.RO.ROOEntity;
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.user.entity.Grupa")]
	public class Grupa extends ROOEntity {
		
		public var nazwa : String;
		
		public var accounts : ArrayCollection = new ArrayCollection();
		
		public function toString():String {
			return nazwa;
		}
	}
}