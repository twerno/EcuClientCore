package net.twerno.eduClient.rpc.tokens {
	import mx.rpc.AsyncToken;
	
	import net.twerno.eduClient.RO.zadanie.Zadanie;
	
	public class ZadanieToken extends RpcToken {
		
		public var zadanie:Zadanie;
		
		public function ZadanieToken(asyncToken:AsyncToken, zadanie:Zadanie) {
			super(asyncToken);
			this.zadanie = zadanie;
		}
	}
}