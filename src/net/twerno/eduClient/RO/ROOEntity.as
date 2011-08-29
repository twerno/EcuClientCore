package net.twerno.eduClient.RO {
	import pl.twerno.commLib.helpers.ObjectHelper;
	
	[Bindable]
	public class ROOEntity {
		public var id: uint = 0;

		public var version: int = -1;

		public function detailedToString():String {
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