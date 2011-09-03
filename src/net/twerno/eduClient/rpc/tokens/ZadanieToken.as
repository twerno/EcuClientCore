package net.twerno.eduClient.rpc.tokens {
	import mx.rpc.AsyncToken;
	import mx.rpc.events.ResultEvent;
	
	import net.twerno.eduClient.RO.zadanie.Zadanie;
	
	public class ZadanieToken extends RpcToken {
		
		public var zadanie:Zadanie;
		
		public function ZadanieToken(asyncToken:AsyncToken, destination:String, remoteMethod:String,  
									 zadanie:Zadanie) {
			super(asyncToken, destination, remoteMethod);
			this.zadanie = zadanie;
		}
		
		public override function beforeResult(event:ResultEvent):void {
//			zadanie.id = event.result as String;
		}
	}
}