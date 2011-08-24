package net.twerno.eduClient.responders {
	import mx.controls.Alert;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	
	import net.twerno.eduClient.rpc.tokens.RpcToken;
	
	public class AlertRpcResponder implements IRpcResponder {
		public function AlertRpcResponder() {
		}
		
		public function result(data:ResultEvent, token:RpcToken):void {
			if (data is ResultEvent) {
				Alert.show((data as ResultEvent).result.toString());
			} else
				Alert.show(data.toString());
		}
		
		public function fault(info:FaultEvent, token:RpcToken):void {
			if (info is FaultEvent) {
				Alert.show((info as FaultEvent).fault.faultString);
			} else
				Alert.show(info.toString());
		}
	}
}