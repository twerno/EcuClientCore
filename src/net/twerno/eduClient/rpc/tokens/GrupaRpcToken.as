package net.twerno.eduClient.rpc.tokens {
	import mx.rpc.AsyncToken;
	
	public class GrupaRpcToken extends RpcToken {
		
		public var grupaName:String;
		
		public function GrupaRpcToken(asyncToken:AsyncToken, grupaName: String) {
			super(asyncToken);
			this.grupaName = grupaName;
		}
	}
}