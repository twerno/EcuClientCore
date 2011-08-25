package net.twerno.eduClient.RO.user {
	import mx.collections.ArrayCollection;
	
	import pl.twerno.commLib.helpers.CollectionHelper;
	import net.twerno.eduClient.RO.ROOEntity;
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.user.entity.Account")]
	public class Account extends ROOEntity {
		public var username : String;
		
		public var enabled : Boolean = true;
		
		public var roles : ArrayCollection = new ArrayCollection();
		
		public var grupy : ArrayCollection = new ArrayCollection();
		
		public var password : String;
		
		public var salt : String;
		
		public function toString():String {
			return detailedToString();
		}
		
		public function hasGroup(grupaName:String):Boolean {
			return CollectionHelper.arayCollectionContains(grupy, 'nazwa', grupaName);
		}
	}
}