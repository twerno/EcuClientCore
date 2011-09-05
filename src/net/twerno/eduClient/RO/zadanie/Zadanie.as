package net.twerno.eduClient.RO.zadanie {
	import mx.collections.ArrayCollection;
	
	import net.twerno.eduClient.RO.ROOEntity;
	import net.twerno.eduClient.consts.Const;
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.zadanie.entity.Zadanie")]
	public class Zadanie extends ROOEntity {

//		@NotNull
		public var nazwa:String;

//		@NotNull
//		@OrderColumn
		public var autorId:String;

//		@NotNull
//		TypZadania
		public var typZadania:String = Const.TYP_ZADANIA_QUIZ;

//		@NotNull
		public var typWyboruPytan:String = Const.TYP_WYBORU_PYTAN_LOSOWO;

//		@NotNull
		public var obowiazkowe:Boolean = true;
		
		public var minimalnyWynik:int;

//		@Temporal(TemporalType.TIMESTAMP)
//		@DateTimeFormat(style = "M-")
		public var dtOd:Date;

//		@Temporal(TemporalType.TIMESTAMP)
//		@DateTimeFormat(style = "M-")
		public var dtDo:Date;

//		@NotNull
		public var limitCzasowy:int = 999;

//		@NotNull 
		public var iloscPytan:int;

//		@NotNull
//		TrybSprawdzenia
		public var trybSprawdzenia:String = Const.TYP_SPRAWDZENIA_NATYCHMIAST_WUMUS;

//		@NotNull
//		@OneToMany(mappedBy="zadanie", cascade=CascadeType.ALL)
		public var zadanie_zbioryPytan:ArrayCollection = new ArrayCollection();

//		@NotNull
//		@OneToOne(mappedBy="zadanie", cascade=CascadeType.ALL)
		public var zasady:Zadanie_Zasady = new Zadanie_Zasady();
		
		public function Zadanie():void {
			super();
		}

		public function has_zbiorPytan(zbiorPytanId:String):Boolean {
			return get_zbiorPytan(zbiorPytanId) != null;
		}
		
		public function get_zbiorPytan(zbiorPytanId:String):Zadanie_ZbiorPytan {
			for each (var zb:Zadanie_ZbiorPytan in zadanie_zbioryPytan)
			if (zb.zbiorPytanId == zbiorPytanId)
				return zb;
			return null;
		}
		
		public function del_zbiorPytan(zbiorPytanId:String):void {
			var zp:Zadanie_ZbiorPytan = get_zbiorPytan(zbiorPytanId);
			if (zp)
				zadanie_zbioryPytan.removeItemAt(zadanie_zbioryPytan.getItemIndex(zp));
		}
	}
}