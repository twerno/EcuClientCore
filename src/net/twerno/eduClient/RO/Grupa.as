package net.twerno.eduClient.RO {
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.user.entities.Grupa")]
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