package net.twerno.eduClient.services {
	import mx.rpc.AsyncToken;
	
	import net.twerno.eduClient.EduClient;
	import net.twerno.eduClient.RO.Account;
	import net.twerno.eduClient.RemoteObjectFactory;
	
	final public class UserService extends AbstractService {
		public static const SERVICE_NAME : String = 'userService';
		
		private static const REGISTER_USER_METHOD : String = 'registerUser';
		private static const GET_ACCOUNT_METHOD : String = 'getAccount';

		public function UserService(eduClient: EduClient, destination:String, roFactory:RemoteObjectFactory) {
			super(eduClient, destination, roFactory);
		}
		
		public function login(username:String, password:String):AsyncToken {
			return ro.channelSet.login(username, password);
		}
		
		public function logout():AsyncToken {
			return ro.channelSet.logout();
		}
		
		public function registerUser(account:Account):AsyncToken {
			return send(REGISTER_USER_METHOD, account);
		}
		
		public function getAccount():AsyncToken {
			return send(GET_ACCOUNT_METHOD);
		}
	}
}