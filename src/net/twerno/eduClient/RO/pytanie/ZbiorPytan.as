package net.twerno.eduClient.RO.pytanie {
	import mx.utils.ObjectUtil;
	
	import net.twerno.eduClient.RO.ROOEntity;
	import net.twerno.eduClient.RO.user.Account;
	import net.twerno.eduClient.consts.Const;
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.pytanie.entity.ZbiorPytan")]
	public class ZbiorPytan extends ROOEntity {
//		@NotNull
		public var typZadania:String = Const.TYP_ZADANIA_POSORTUJ;
		
//		@NotNull
		public var opis:String;
		
//		@NotNull
		public var przedmiot:String;
		
//		@NotNull
		public var autorId:String;
		
//		@NotNull
		public var isPublic:Boolean = false;
		
//		@NotNull
		public var usuniety:Boolean;
		
//		@NotNull
		public var size:int = 0;

		public function Kopia():ZbiorPytan {
			return ObjectUtil.copy(this) as ZbiorPytan;
		}

		public function wczytajZ(zbior:ZbiorPytan):void {
			this.id         = zbior.id;
			this.version    = zbior.version;
			this.typZadania = zbior.typZadania;
			this.opis       = zbior.opis;
			this.przedmiot  = zbior.przedmiot;
			this.isPublic   = zbior.isPublic;
			this.usuniety   = zbior.usuniety;
		}

		public function toString():String {
			return opis;
		}
	}
}