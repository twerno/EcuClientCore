package net.twerno.eduClient.RO.zadanie {
	import mx.collections.ArrayCollection;
	
	import net.twerno.eduClient.RO.ROOEntity;
	import net.twerno.eduClient.RO.user.Account;
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.zadanie.entity.Zadanie")]
	public class Zadanie extends ROOEntity {
		
		public var nazwa:String;
		
//		@NotNull
		public var opis:String;
		
//		@NotNull
		public var autor:Account;
		
//		@NotNull
		public var typZdania:String;
		
//		@NotNull
//		@ManyToMany(cascade = CascadeType.ALL)
		public var zbiorPytan:ArrayCollection;
	}
}