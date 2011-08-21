package net.twerno.eduClient.services {
	import mx.rpc.AsyncToken;
	import mx.rpc.remoting.RemoteObject;
	
	import net.twerno.eduClient.EduClient;
	import net.twerno.eduClient.RemoteObjectFactory;
	import net.twerno.eduClient.responders.AsyncTokenMock;

	public class AbstractService {
		private var _ro          : RemoteObject;
		private var _destination : String;
		
		protected var _eduClient : EduClient;

		protected function get ro()          : RemoteObject {return _ro}
		protected function get destination() : String       {return _destination}

		public function AbstractService(eduClient: EduClient, destination:String, roFactory:RemoteObjectFactory) {
			_ro = roFactory.getRO(destination);
			_destination = destination;
			_eduClient = eduClient;
		}

		public function authenticated():Boolean {
			return _ro.channelSet.authenticated;
		}

		protected function send(operationName:String, ...params):AsyncToken {
			if (_eduClient.otwartePolaczenie) {
				return _ro.getOperation(operationName).send.apply(null, params);
			} else {
				return null;	
			}
				
		}
	}
}