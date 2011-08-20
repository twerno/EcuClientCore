package net.twerno.eduClient {
	import flash.utils.Dictionary;
	
	import mx.messaging.Channel;
	import mx.messaging.ChannelSet;
	import mx.messaging.channels.AMFChannel;
	import mx.messaging.channels.SecureAMFChannel;
	import mx.rpc.remoting.RemoteObject;

	public class RemoteObjectFactory {

		public  var cs:ChannelSet;
		private var endpoint:String;
		private var remoteObjects:Dictionary;

		public function RemoteObjectFactory(endpoint: String) {
			this.endpoint = endpoint;
			setCheannel(endpoint);
		}

		public function getRO(destination: String):RemoteObject {
			var result:RemoteObject = new RemoteObject(destination);
			result.endpoint   = endpoint;
			result.channelSet = cs;
			return result;
		}
		
		private function setCheannel(endpoint:String):void {
			if (endpoint != null) {
				var chan:Channel;
				if (endpoint.indexOf("https") == 0) {
					chan = new SecureAMFChannel(null, endpoint);
				} else {
					chan = new AMFChannel(null, endpoint);
				}
				cs = new ChannelSet();
				cs.addChannel(chan);
			}
		}
		
	}
}