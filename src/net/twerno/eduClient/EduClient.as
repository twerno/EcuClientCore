package net.twerno.eduClient {
	import net.twerno.eduClient.services.TestService;
	import net.twerno.eduClient.services.UserService;

	public class EduClient {
		private var roFactory:RemoteObjectFactory;
		
		private var _userService:UserService;
		private var _testService:TestService;
		
		public function get userService():UserService {return _userService}
		public function get testService():TestService {return _testService}

		public function EduClient(endPoint: String) {
			roFactory = new RemoteObjectFactory(endPoint);
			_userService = new UserService(UserService.SERVICE_NAME, roFactory);
			_testService = new TestService(TestService.SERVICE_NAME, roFactory);
		}
	}
}