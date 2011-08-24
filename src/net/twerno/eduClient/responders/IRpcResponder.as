package net.twerno.eduClient.responders {
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import net.twerno.eduClient.rpc.tokens.RpcToken;

	public interface IRpcResponder {
		
		function result(data:ResultEvent, token:RpcToken):void;
		
		function fault(info:FaultEvent, token:RpcToken):void;
	}
}