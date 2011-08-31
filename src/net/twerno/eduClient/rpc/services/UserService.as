package net.twerno.eduClient.rpc.services {
	import mx.rpc.AsyncToken;
	
	import net.twerno.eduClient.EduClient;
	import net.twerno.eduClient.RO.user.Account;
	import net.twerno.eduClient.RemoteObjectFactory;
	import net.twerno.eduClient.rpc.tokens.AccountToken;
	import net.twerno.eduClient.rpc.tokens.GrupaRpcToken;
	import net.twerno.eduClient.rpc.tokens.GrupaUserRpcToken;
	import net.twerno.eduClient.rpc.tokens.RpcToken;
	
	final public class UserService extends AbstractService {
		public static const SERVICE_NAME : String = 'userService';

		private static const REGISTER_USER_METHOD     : String = 'registerUser';
		private static const GET_LOGGED_USER_METHOD   : String = 'getLoggedUser';
		private static const FIND_ALL_ACCOUNTS_METHOD : String = 'findAllAccounds';
		private static const DODAJ_DO_GRUPY_METHOD    : String = 'dodajDoGrupy';
		private static const USUN_Z_GRUPY_METHOD      : String = 'usunZGrupy';
		private static const DODAJ_GRUPE_METHOD       : String = 'dodajGrupe';
		private static const USUN_GRUPE_METHOD        : String = 'usunGrupe';
		private static const FIND_ALL_GROUPS_METHOD   : String = 'findAllGroups';
		private static const ZAPISZ_ACCOUNT_METHOD    : String = 'zapiszAccount';
		private static const ZMIEN_MOJE_HASLO_METHOD  : String = 'zmienMojeHaslo';
		private static const ZMIEN_HASLO_METHOD       : String = 'zmienHaslo';

		public function UserService(eduClient: EduClient, destination:String, roFactory:RemoteObjectFactory) {
			super(eduClient, destination, roFactory);
		}

		public function login(username:String, password:String):RpcToken {
			var token:AsyncToken = ro.channelSet.login(username, password); 
			return new RpcToken(token);
		}

		public function logout():RpcToken {
			var token:AsyncToken = ro.channelSet.logout();
			return new RpcToken(token); 
		}

		public function registerUser(username: String, password: String, role_uczen: Boolean, role_nauczyciel: Boolean):RpcToken {
			return rpcSend(REGISTER_USER_METHOD, username, password, role_uczen, role_nauczyciel);
		}
		
		public function getLoggedUser():RpcToken {
			return rpcSend(GET_LOGGED_USER_METHOD);
		}
		
		public function findAllAccounds():RpcToken {
			return rpcSend(FIND_ALL_ACCOUNTS_METHOD);
		}

		public function dodajDoGrupy(username:String, nazwaGrupy:String):GrupaUserRpcToken {
			var token:AsyncToken = send(DODAJ_DO_GRUPY_METHOD, username, nazwaGrupy);
			return new GrupaUserRpcToken(token, username, nazwaGrupy);
		}

		public function usunZGrupy(username:String, nazwaGrupy:String):GrupaUserRpcToken {
			var token:AsyncToken = send(USUN_Z_GRUPY_METHOD, username, nazwaGrupy);
			return new GrupaUserRpcToken(token, username, nazwaGrupy);		
		}

		public function dodajGrupe(nazwaGrupy:String):GrupaRpcToken {
			var token:AsyncToken = send(DODAJ_GRUPE_METHOD, nazwaGrupy);
			return new GrupaRpcToken(token, nazwaGrupy);
		}

		public function usunGrupe(nazwaGrupy:String):GrupaRpcToken {
			var token:AsyncToken = send(USUN_GRUPE_METHOD, nazwaGrupy);
			return new GrupaRpcToken(token, nazwaGrupy);
		}

		public function findAllGroups():RpcToken {
			return rpcSend(FIND_ALL_GROUPS_METHOD);
		}
		
		public function zapisAccount(account:Account):AccountToken {
			var token:AsyncToken = send(ZAPISZ_ACCOUNT_METHOD, account);
			return new AccountToken(token ,account);
		}
		
		public function zmienMojeHaslo(noweHaslo:String):RpcToken {
			return rpcSend(ZMIEN_MOJE_HASLO_METHOD, noweHaslo);
		}
		
		public function zmienHaslo(username:String, noweHaslo:String):RpcToken {
			return rpcSend(ZMIEN_HASLO_METHOD, username, noweHaslo);
		}
	}
}