package net.twerno.eduClient.rpc.tokens {
	import mx.rpc.AsyncToken;
	
	public class GrupaUserRpcToken extends RpcToken {
		
		public var grupaName : String;
		public var username  : String;
		
		public function GrupaUserRpcToken(asyncToken:AsyncToken, username: String, grupaName: String) {
			super(asyncToken);
			this.grupaName = grupaName;
			this.username  = username;
		}
	}
}