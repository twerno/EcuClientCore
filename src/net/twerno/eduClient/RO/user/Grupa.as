package net.twerno.eduClient.RO.user {
	import net.twerno.eduClient.RO.ROOEntity;
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.user.entity.Grupa")]
	public class Grupa extends ROOEntity {
		
		public var nazwa : String;
		
		public static function get(nazwa: String):Grupa {
			var grupa:Grupa = new Grupa();
			grupa.nazwa = nazwa;
			return grupa;
		}
		
		public function toString():String {
			return nazwa;
		}
	}
}