package net.twerno.eduClient {
	import net.twerno.eduClient.rpc.services.PytanieService;
	import net.twerno.eduClient.rpc.services.SesjaService;
	import net.twerno.eduClient.rpc.services.TestService;
	import net.twerno.eduClient.rpc.services.UserService;
	import net.twerno.eduClient.rpc.services.ZadanieService;

	public class EduClient {
		private var roFactory:RemoteObjectFactory;

		private var _userService:UserService;
		private var _testService:TestService;
		private var _zadanieService:ZadanieService;
		private var _pytanieService:PytanieService;
		private var _sesjaService:SesjaService;

		public function get userService():UserService       {return _userService}
		public function get testService():TestService       {return _testService}
		public function get zadanieService():ZadanieService {return _zadanieService}
		public function get pytanieService():PytanieService {return _pytanieService}
		public function get sesjaService():SesjaService     {return _sesjaService}

		public var otwartePolaczenie : Boolean = true;

		public function EduClient(endPoint: String) {
			var regROHelper:RegisterROHelper = new RegisterROHelper();

			roFactory = new RemoteObjectFactory(endPoint);

			_userService    = new UserService(this,    UserService.SERVICE_NAME,    roFactory);
			_testService    = new TestService(this,    TestService.SERVICE_NAME,    roFactory);
			_zadanieService = new ZadanieService(this, ZadanieService.SERVICE_NAME, roFactory);
			_pytanieService = new PytanieService(this, PytanieService.SERVICE_NAME, roFactory);
			_sesjaService   = new SesjaService(this,   SesjaService.SERVICE_NAME,   roFactory);
		}
	}
}