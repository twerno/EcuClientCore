package net.twerno.eduClient.RO.pytanie {
	import net.twerno.eduClient.RO.ROOEntity;
	import net.twerno.eduClient.RO.user.Account;
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.pytanie.entity.ZbiorPytan")]
	public class ZbiorPytan extends ROOEntity {
//		@NotNull
		public var typZdania:String;
		
//		@NotNull
		public var opis:String;
		
//		@NotNull
		public var kategoria:String;
		
//		@NotNull
		public var autor:Account;
		
//		@NotNull
		public var isPublic:Boolean;
		
//		@NotNull
		public var usuniety:Boolean;
	}
}