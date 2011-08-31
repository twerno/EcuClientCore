package net.twerno.eduClient.rpc.services {
	import mx.collections.ArrayCollection;
	
	import net.twerno.eduClient.EduClient;
	import net.twerno.eduClient.RO.pytanie.ZbiorPytan;
	import net.twerno.eduClient.RemoteObjectFactory;
	import net.twerno.eduClient.rpc.tokens.RpcToken;
	
	public class PytanieService extends AbstractService {
		public static const SERVICE_NAME : String = 'pytanieService';

		private static const ZAPISZ_ZBIOR_PYTAN_METHOD           : String = 'zapiszZbiorPytan';
		private static const WCZYTAJ_ZBIOR_PYTAN_METHOD          : String = 'wczytajZbiorPytan';
		private static const WCZYTAJ_PYTANIA_METHOD              : String = 'wczytajPytania';
		private static const WCZYTAJ_DOSTEPNE_ZBIORY_METHOD      : String = 'wczytajDostepneZbiory';
		private static const WCZYTAJ_DOSTEPNE_ZBIORY_TYPU_METHOD : String = 'wczytajDostepneZbioryTypu';
		private static const USUN_ZBIOR_PYTAN_METHOD             : String = 'usunZbiorPytan';

		public function PytanieService(eduClient:EduClient, destination:String, roFactory:RemoteObjectFactory) {
			super(eduClient, destination, roFactory);
		}

		public function zapiszZbiorPytan(zbior:ZbiorPytan, pytania:ArrayCollection):RpcToken {
			return rpcSend(ZAPISZ_ZBIOR_PYTAN_METHOD, zbior, pytania);
		}

		public function wczytajZbiorPytan(zbiorPytanId:uint):RpcToken {
			return rpcSend(WCZYTAJ_ZBIOR_PYTAN_METHOD, zbiorPytanId);
		}

		public function wczytajPytania(zbiorPytanId:String):RpcToken {
			return rpcSend(WCZYTAJ_PYTANIA_METHOD, zbiorPytanId);
		}

		public function wczytajDostepneZbiory():RpcToken {
			return rpcSend(WCZYTAJ_DOSTEPNE_ZBIORY_METHOD);
		}

		public function wczytajDostepneZbioryTypu(typZbioru:String):RpcToken {
			return rpcSend(WCZYTAJ_DOSTEPNE_ZBIORY_TYPU_METHOD, typZbioru);
		}
		
		public function usunZbiorPytan(typZbioru:String):RpcToken {
			return rpcSend(USUN_ZBIOR_PYTAN_METHOD, typZbioru);
		}
	}
}