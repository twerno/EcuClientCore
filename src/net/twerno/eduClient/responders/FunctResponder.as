package net.twerno.eduClient.responders {
	import mx.rpc.IResponder;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	
	public class FunctResponder implements IResponder {
		
		private var onResult : Function;
		private var onFault : Function;
		
		public function FunctResponder(onResult:Function, onFault:Function) {
			this.onResult = onResult;
			this.onFault = onFault;
		}
		
		public function result(data:Object):void {
			if (onResult != null) {
				onResult(data as ResultEvent);
			}
		}
		
		public function fault(info:Object):void {
			if (onFault != null) {
				onFault(info as FaultEvent);
			}
		}
	}
}