package net.twerno.eduClient.RO.zadanie {
	import mx.collections.ArrayCollection;
	
	import net.twerno.eduClient.RO.ROOEntity;
	import net.twerno.eduClient.RO.user.Account;
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.zadanie.entity.ZadaneZadanie")]
	public class ZadaneZadanie extends ROOEntity {
//		@NotNull
//		@ManyToOne
		public var zadanie:Zadanie;
		
//		@NotNull
		public var obowiazkowe:Boolean;
		
//		@NotNull
//		@ManyToMany
		public var grupy:ArrayCollection;
		
//		@Temporal(TemporalType.TIMESTAMP)
//		@DateTimeFormat(style = "M-")
		public var dtOd:Date;
		
//		@Temporal(TemporalType.TIMESTAMP)
//		@DateTimeFormat(style = "M-")
		public var dtDo:Date;
		
//		@Temporal(TemporalType.TIMESTAMP)
//		@DateTimeFormat(style = "M-")
		public var dataUtworzenia:Date;
//		
//		@NotNull
		public var maxIloscPytan:int;
		
//		@NotNull
//		@OneToOne(mappedBy="zadaneZadanie")
		public var typWyboru:String;
		
//		@NotNull
//		@OneToOne
		public var autor:Account;
	}
}