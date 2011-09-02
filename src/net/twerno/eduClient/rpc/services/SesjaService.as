package net.twerno.eduClient.rpc.services {
	import net.twerno.eduClient.EduClient;
	import net.twerno.eduClient.RemoteObjectFactory;
	import net.twerno.eduClient.rpc.tokens.RpcToken;
	
	public class SesjaService extends AbstractService {
		public static const SERVICE_NAME : String = 'sesjaService';
		
		private static const OTWORZ_SESJE_METHOD     : String = 'otworzSesje';
		private static const ZAMKNIJ_SESJE_METHOD    : String = 'zamknijSesje';
		private static const ZAPISZ_ODPOWIEDZ_METHOD : String = 'zapiszOdpowiedz';
	
		public function SesjaService(eduClient:EduClient, destination:String, roFactory:RemoteObjectFactory) {
			super(eduClient, destination, roFactory);
		}
		
		public function otworzSesje(zadanieId:String):RpcToken {
			return rpcSend(OTWORZ_SESJE_METHOD, zadanieId);
		}
		
		public function zamknijSesje(sesjaId:String):RpcToken {
			return rpcSend(ZAMKNIJ_SESJE_METHOD, sesjaId);
		}
		
		public function zapiszOdpowiedz(sesjaId:String, pytanieId:String, tnPoprawna:Boolean, iloscProb:int):RpcToken {
			return rpcSend(ZAPISZ_ODPOWIEDZ_METHOD, sesjaId, pytanieId, tnPoprawna, iloscProb);
		}
	}
}