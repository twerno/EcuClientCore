package net.twerno.eduClient.RO.zadanie {
	import net.twerno.eduClient.RO.ROOEntity;
	
	import pl.twerno.commLib.helpers.ObjectHelper;
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.zadanie.entity.Zadanie_Zasady")]
	public class Zadanie_Zasady extends ROOEntity {
		
		public var czas_bronze:int = 0;
		
		public var czas_silver:int = 0;
		
		public var czas_gold:int = 0;
		
		public var punkty_bronze:int = 0;
		
		public var punkty_silver:int = 0;
		
		public var punkty_gold:int = 0;
		
		public function toString():String {
			return ObjectHelper.detailedToString(this, 
				true,   // showClassInfo
				true,   // showVariables
				true,   // showProperties
				false,  // showMethods
				false,  // showPropTypes
				false); // showHeader
		}
	}
}