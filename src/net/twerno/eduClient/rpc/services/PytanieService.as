package net.twerno.eduClient.rpc.services {
	import mx.collections.ArrayCollection;
	
	import net.twerno.eduClient.EduClient;
	import net.twerno.eduClient.RO.pytanie.ZbiorPytan;
	import net.twerno.eduClient.RemoteObjectFactory;
	import net.twerno.eduClient.rpc.tokens.RpcToken;
	
	public class PytanieService extends AbstractService {
		public static const SERVICE_NAME : String = 'pytaniaService';
		
		private static const ZAPISZ_ZBIOR_POSORTUJ_METHOD        : String = 'zapiszZbior_Posortuj';
		private static const WCZYTAJ_ZBIOR_POSORTUJ_METHOD       : String = 'wczytajZbior_Posortuj';
		private static const ZAPISZ_ZBIOR_QUIZ_METHOD            : String = 'zapiszZbior_Quiz';
		private static const WCZYTAJ_ZBIOR_QUIZ_METHOD           : String = 'wczytajZbior_Quiz';
		private static const DAJ_DOSTEPNE_ZBIORY_METHOD          : String = 'dajDostepneZbiory';
		private static const DAJ_DOSTEPNE_ZBIORY_POSORTUJ_METHOD : String = 'dajDostepneZbiory_Posortuj';
		private static const DAJ_DOSTEPNE_ZBIORY_QUIZ_METHOD     : String = 'dajDostepneZbiory_Quiz';

		public function PytanieService(eduClient:EduClient, destination:String, roFactory:RemoteObjectFactory) {
			super(eduClient, destination, roFactory);
		}

		public function zapiszZbior_Posortuj(zbior:ZbiorPytan, pytania:ArrayCollection):RpcToken {
			return rpcSend(ZAPISZ_ZBIOR_POSORTUJ_METHOD, zbior, pytania);
		}

		public function wczytajZbior_Posortuj():RpcToken {
			return rpcSend(WCZYTAJ_ZBIOR_POSORTUJ_METHOD);
		}

		public function zapiszZbior_Quiz(zbior:ZbiorPytan, pytania:ArrayCollection):RpcToken {
			return rpcSend(ZAPISZ_ZBIOR_QUIZ_METHOD, zbior, pytania);
		}

		public function wczytajZbior_Quiz():RpcToken {
			return rpcSend(WCZYTAJ_ZBIOR_QUIZ_METHOD);
		}

		public function dajDostepneZbiory_Posortuj():RpcToken {
			return rpcSend(DAJ_DOSTEPNE_ZBIORY_POSORTUJ_METHOD);
		}

		public function dajDostepneZbiory_Quiz():RpcToken {
			return rpcSend(DAJ_DOSTEPNE_ZBIORY_QUIZ_METHOD);
		}
	}
}