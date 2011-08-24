package net.twerno.eduClient.responders {
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	
	import net.twerno.eduClient.rpc.tokens.RpcToken;
	
	public class RpcResponder implements IRpcResponder {
		
		private var onResult : Function;
		private var onFault  : Function;
		
		public function RpcResponder(onResult:Function, onFault:Function) {
			this.onResult = onResult;
			this.onFault  = onFault;
		}
		
		public function result(data:ResultEvent, token:RpcToken):void {
			if (onResult != null)
				onResult(data as ResultEvent, token);
		}
		
		public function fault(info:FaultEvent, token:RpcToken):void {
			if (onFault != null)
				onFault(info as FaultEvent, token);
		}
		
		public static function get(onResult:Function, onFault:Function):RpcResponder {
			return new RpcResponder(onResult, onFault);
		}
	}
}