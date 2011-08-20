package net.twerno.eduClient.services {
	import mx.rpc.AsyncToken;
	import mx.rpc.remoting.RemoteObject;
	
	import net.twerno.eduClient.RemoteObjectFactory;

	public class AbstractService {
		private var _ro          : RemoteObject;
		private var _destination : String;

		protected function get ro()          : RemoteObject {return _ro}
		protected function get destination() : String       {return _destination}

		public function AbstractService(destination:String, roFactory:RemoteObjectFactory) {
			_ro = roFactory.getRO(destination);
			_destination = destination;
		}

		public function authenticated():Boolean {
			return _ro.channelSet.authenticated;
		}

		protected function send(operationName:String, ...params):AsyncToken {
			return _ro.getOperation(operationName).send.apply(null, params);
		}
	}
}