package net.twerno.eduClient {
	import net.twerno.eduClient.rpc.services.TestService;
	import net.twerno.eduClient.rpc.services.UserService;

	public class EduClient {
		private var roFactory:RemoteObjectFactory;
		
		private var _userService:UserService;
		private var _testService:TestService;
		
		public function get userService():UserService {return _userService}
		public function get testService():TestService {return _testService}
		
		public var otwartePolaczenie : Boolean = true;

		public function EduClient(endPoint: String) {
			roFactory = new RemoteObjectFactory(endPoint);
			_userService = new UserService(this, UserService.SERVICE_NAME, roFactory);
			_testService = new TestService(this, TestService.SERVICE_NAME, roFactory);
		}
	}
}