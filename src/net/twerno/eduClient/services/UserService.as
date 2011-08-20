package net.twerno.eduClient.services {
	import mx.rpc.AsyncToken;
	
	import net.twerno.eduClient.RemoteObjectFactory;
	
	final public class UserService extends AbstractService {
		public static const SERVICE_NAME : String = 'user_service';

		public function UserService(destination:String, roFactory:RemoteObjectFactory) {
			super(destination, roFactory);
		}
		
		public function login(username:String, password:String):AsyncToken {
			return ro.channelSet.login(username, password);
		}
		
		public function logout():AsyncToken {
			return ro.channelSet.logout();
		}
	}
}