package net.twerno.eduClient.rpc.tokens {
	import mx.rpc.AsyncToken;
	
	public class GrupaRpcToken extends RpcToken {
		
		public var grupaName:String;
		
		public function GrupaRpcToken(asyncToken:AsyncToken, destination:String, remoteMethod:String, 
									  grupaName: String) {
			super(asyncToken, destination, remoteMethod);
			this.grupaName = grupaName;
		}
	}
}