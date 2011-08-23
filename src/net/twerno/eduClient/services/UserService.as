package net.twerno.eduClient.services {
	import mx.rpc.AsyncToken;
	
	import net.twerno.eduClient.EduClient;
	import net.twerno.eduClient.RO.Account;
	import net.twerno.eduClient.RemoteObjectFactory;
	
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

		public function UserService(eduClient: EduClient, destination:String, roFactory:RemoteObjectFactory) {
			super(eduClient, destination, roFactory);
		}
		
		public function login(username:String, password:String):AsyncToken {
			return ro.channelSet.login(username, password);
		}
		
		public function logout():AsyncToken {
			return ro.channelSet.logout();
		}
		
		public function registerUser(username: String, password: String, role_uczen: Boolean, role_nauczyciel: Boolean):AsyncToken {
			return send(REGISTER_USER_METHOD, username, password, role_uczen, role_nauczyciel);
		}
		
		public function getLoggedUser():AsyncToken {
			return send(GET_LOGGED_USER_METHOD);
		}
		
		public function findAllAccounds():AsyncToken {
			return send(FIND_ALL_ACCOUNTS_METHOD);
		}
		
		public function dodajDoGrupy(username:String, nazwaGrupy:String):AsyncToken {
			return send(DODAJ_DO_GRUPY_METHOD, username, nazwaGrupy);
		}
		
		public function usunZGrupy(username:String, nazwaGrupy:String):AsyncToken {
			return send(USUN_Z_GRUPY_METHOD, username, nazwaGrupy);
		}
		
		public function dodajGrupe(nazwaGrupy:String):AsyncToken {
			return send(DODAJ_GRUPE_METHOD, nazwaGrupy);
		}
		
		public function usunGrupe(nazwaGrupy:String):AsyncToken {
			return send(USUN_GRUPE_METHOD, nazwaGrupy);
		}

		public function findAllGroups():AsyncToken {
			return send(FIND_ALL_GROUPS_METHOD);
		}
	}
}