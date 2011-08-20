package net.twerno.eduClient.responders {
	import mx.controls.Alert;
	import mx.rpc.IResponder;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	
	public class AlertResponder implements IResponder {
		public function AlertResponder() {
		}
		
		public function result(data:Object):void {
			if (data is ResultEvent) {
				Alert.show((data as ResultEvent).result.toString());
			} else
				Alert.show(data.toString());
		}
		
		public function fault(info:Object):void {
			if (info is FaultEvent) {
				Alert.show((info as FaultEvent).fault.faultString);
			} else
				Alert.show(info.toString());
		}
	}
}