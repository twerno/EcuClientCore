package net.twerno.eduClient.rpc.tokens {
	import mx.rpc.AsyncToken;
	
	import net.twerno.eduClient.RO.zadanie.ZadaneZadanie;
	
	public class ZadaneZadanieToken extends RpcToken {
		
		public var zadanie:ZadaneZadanie;
		
		public function ZadaneZadanieToken(asyncToken:AsyncToken, zadanie:ZadaneZadanie) {
			super(asyncToken);
			this.zadanie = zadanie;
		}
	}
}