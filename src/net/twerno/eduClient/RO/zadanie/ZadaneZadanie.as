package net.twerno.eduClient.RO.zadanie {
	import mx.collections.ArrayCollection;
	
	import net.twerno.eduClient.RO.ROOEntity;
	import net.twerno.eduClient.RO.user.Account;
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.zadanie.entity.ZadaneZadanie")]
	public class ZadaneZadanie extends Zadanie {
		
//		@NotNull
//		@ManyToMany
		public var grupy:ArrayCollection = new ArrayCollection();
	}
}