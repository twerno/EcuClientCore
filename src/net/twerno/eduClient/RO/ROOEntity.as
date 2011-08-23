package net.twerno.eduClient.RO {
	import pl.twerno.commLib.helpers.ObjectHelper;
	
	[Bindable]
	public class ROOEntity {
		public var id: uint;

		public var version: int;

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