package net.twerno.eduClient.RO.zadanie {
	import mx.collections.ArrayCollection;
	
	import net.twerno.eduClient.RO.ROOEntity;
	import net.twerno.eduClient.RO.user.Account;
	import net.twerno.eduClient.consts.Const;
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.zadanie.entity.ZadaneZadanie")]
	public class ZadaneZadanie extends ROOEntity {
		
		//		@NotNull
		public var nazwa:String;
		
		//		@NotNull
		//		@OrderColumn
		public var autorId:String;
		
		//		@NotNull
		//		TypZadania
		public var typZadania:String;
		
		//		@NotNull
		public var typWyboruPytan:String;
		
		//		@NotNull
		public var obowiazkowe:Boolean = true;
		
		//		@Temporal(TemporalType.TIMESTAMP)
		//		@DateTimeFormat(style = "M-")
		public var dtOd:Date;
		
		//		@Temporal(TemporalType.TIMESTAMP)
		//		@DateTimeFormat(style = "M-")
		public var dtDo:Date;
		
		//		@NotNull
		public var limitCzasowy:int;
		
		//		@NotNull 
		public var limitPytan:int;
		
		//		@NotNull
		//		TrybSprawdzenia
		public var trybSprawdzenia:String;
		
		//		@NotNull
		//		@OneToMany(mappedBy="zadanie", cascade=CascadeType.ALL)
		public var zadanie_zbioryPytan:ArrayCollection = new ArrayCollection();
		
//		@NotNull
//		@ManyToMany
		public var grupy:ArrayCollection = new ArrayCollection();
	}
}