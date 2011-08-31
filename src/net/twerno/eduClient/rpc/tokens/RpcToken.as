package net.twerno.eduClient.rpc.tokens {
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	
	import net.twerno.eduClient.responders.IRpcResponder;
	import net.twerno.eduClient.responders.RpcResponder;
	
	public class RpcToken implements IResponder {
		private var _asyncToken : AsyncToken;
		private var _responders:Array;

		public function get asyncToken():AsyncToken {return _asyncToken}
		public function get responders():Array      {return _responders}

		public function addResponder(responder:IRpcResponder):void {
			if (_responders == null)
				_responders = [];

			_responders.push(responder);
		}

		public function newResponder(onResult:Function, onFault:Function):void {
			addResponder(new RpcResponder(onResult, onFault));
		}

		public function RpcToken(asyncToken:AsyncToken) {
			_asyncToken = asyncToken;
			_asyncToken.addResponder(this);
		}

		public function beforeResult(event:ResultEvent):void {
			// virtual
		}

		public function beforeFault(event:FaultEvent):void {
			// virtual	
		}

		public function result(data:Object):void {
			beforeResult(data as ResultEvent);
			if (_responders != null) {
				var event:ResultEvent = data as ResultEvent;
				for (var i:uint = 0; i < _responders.length; i++) {
					var responder:IRpcResponder = _responders[i];
					if (responder != null)
						responder.result(event, this);
				}
			}
		}

		public function fault(info:Object):void {
			beforeFault(info as FaultEvent);
			if (_responders != null) {
				var event:FaultEvent = info as FaultEvent;
				for (var i:uint = 0; i < _responders.length; i++) {
					var responder:IRpcResponder = _responders[i];
					if (responder != null)
						responder.fault(event, this);
				}
			}
		}
	}
}