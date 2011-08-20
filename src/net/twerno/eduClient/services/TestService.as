package net.twerno.eduClient.services {
	import mx.rpc.AsyncToken;
	
	import net.twerno.eduClient.RemoteObjectFactory;
	
	final public class TestService extends AbstractService {
		public static const SERVICE_NAME : String = 'testService';
		
		private static const HELLO_WORLD_METHOD : String = 'helloWorld';
		private static const SAY_HELLO_METHOD : String = 'sayHello';
		
		public function TestService(destination:String, roFactory:RemoteObjectFactory) {
			super(destination, roFactory);
		}
		
		public function helloWorld():AsyncToken {
			return send(HELLO_WORLD_METHOD);
		}
		
		public function sayHello(name: String):AsyncToken {
			return send(SAY_HELLO_METHOD, name);
		}
	}
}