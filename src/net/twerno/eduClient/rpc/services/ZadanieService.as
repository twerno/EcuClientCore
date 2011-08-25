package net.twerno.eduClient.rpc.services {
	import mx.rpc.AsyncToken;
	
	import net.twerno.eduClient.EduClient;
	import net.twerno.eduClient.RO.zadanie.ZadaneZadanie;
	import net.twerno.eduClient.RO.zadanie.Zadanie;
	import net.twerno.eduClient.RemoteObjectFactory;
	import net.twerno.eduClient.rpc.tokens.RpcToken;
	import net.twerno.eduClient.rpc.tokens.ZadaneZadanieToken;
	import net.twerno.eduClient.rpc.tokens.ZadanieToken;
	
	public class ZadanieService extends AbstractService {
		public static const SERVICE_NAME : String = 'zadanieService';
		
		private static const ZAPISZ_ZADANIE_METHOD         : String = 'zapiszZadanie';
		private static const DAJ_MOJE_ZADANIA_METHOD       : String = 'dajMojeZadania';
		private static const ZAPISZ_ZADANE_ZADANIA_METHOD  : String = 'zapiszZadaneZadanie';
		private static const DAJ_ZADANE_PRZEZE_MNIE_METHOD : String = 'dajZadanePrzezeMnie';
		private static const DAJ_ZADANE_MI_METHOD          : String = 'dajZadaneMi';
		
		public function ZadanieService(eduClient:EduClient, destination:String, roFactory:RemoteObjectFactory) {
			super(eduClient, destination, roFactory);
		}
		
		public function zapiszZadanie(zadanie:Zadanie):ZadanieToken {
			var token:AsyncToken = send(ZAPISZ_ZADANIE_METHOD, zadanie);
			return new ZadanieToken(token, zadanie);
		}
		
		public function dajMojeZadania():RpcToken {
			return rpcSend(DAJ_MOJE_ZADANIA_METHOD);
		}

		public function zapiszZadaneZadanie(zadanie:ZadaneZadanie):ZadaneZadanieToken {
			var token:AsyncToken = send(ZAPISZ_ZADANE_ZADANIA_METHOD, zadanie);
			return new ZadaneZadanieToken(token, zadanie);
		}
		
		public function dajZadanePrzezeMnie():RpcToken {
			return rpcSend(DAJ_ZADANE_PRZEZE_MNIE_METHOD);
		}

		public function dajZadaneMi():RpcToken {
			return rpcSend(DAJ_ZADANE_MI_METHOD);
		}
	}
}