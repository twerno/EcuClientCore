package net.twerno.eduClient.rpc.services {
	import mx.rpc.AsyncToken;
	import mx.rpc.remoting.RemoteObject;
	
	import net.twerno.eduClient.EduClient;
	import net.twerno.eduClient.RemoteObjectFactory;
	import net.twerno.eduClient.rpc.tokens.RpcToken;

	public class AbstractService {
		private var _remoteObject : RemoteObject;
		private var _destination  : String;
		
		protected var _eduClient : EduClient;

		protected function get ro()          : RemoteObject {return _remoteObject}
		protected function get destination() : String       {return _destination}

		public function AbstractService(eduClient: EduClient, destination:String, roFactory:RemoteObjectFactory) {
			_remoteObject = roFactory.getRO(destination);
			_destination = destination;
			_eduClient = eduClient;
		}

		public function authenticated():Boolean {
			return _remoteObject.channelSet.authenticated;
		}

		protected function send(operationName:String, ...params):AsyncToken {
			if (_eduClient.otwartePolaczenie)
				return _remoteObject.getOperation(operationName).send.apply(null, params);
			else
				throw new Error('Połączenie zamknięte.')
		}
		
		protected function rpcSend(operationName:String, ...params):RpcToken {
			if (_eduClient.otwartePolaczenie) {
				var token:AsyncToken = _remoteObject.getOperation(operationName).send.apply(null, params); 
				return new RpcToken(token);
			}
			else
				throw new Error('Połączenie zamknięte.')
		}
	}
}