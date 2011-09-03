package net.twerno.eduClient.rpc.tokens {
	import mx.rpc.AsyncToken;
	
	import net.twerno.eduClient.RO.zadanie.ZadaneZadanie;
	
	public class ZadaneZadanieToken extends RpcToken {
		
		public var zadanie:ZadaneZadanie;
		
		public function ZadaneZadanieToken(asyncToken:AsyncToken, destination:String, remoteMethod:String,
										   zadanie:ZadaneZadanie) {
			super(asyncToken, destination, remoteMethod);
			this.zadanie = zadanie;
		}
	}
}