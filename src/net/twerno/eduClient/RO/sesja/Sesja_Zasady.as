package net.twerno.eduClient.RO.sesja {
	import mx.charts.chartClasses.NumericAxis;
	
	import net.twerno.eduClient.RO.ROOEntity;
	
	[Bindable]
	[RemoteClass(alias="net.twerno.eduserver.sesja.entity.Sesja_Zasady")]
	public class Sesja_Zasady extends ROOEntity {
		
		public var sesja:Sesja;
		
		public var czas:int;
		
		public var wynik:NumericAxis;
		
		public var czas_bronze:Boolean;
		
		public var czas_silver:Boolean;
		
		public var czas_gold:Boolean;
		
		public var bezblednie:Boolean;
		
		public var punkty_bronze:Boolean;
		
		public var punkty_silver:Boolean;
		
		public var punkty_gold:Boolean;
		
		public var ukonczone:Boolean;
	}
}