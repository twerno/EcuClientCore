package net.twerno.eduClient.responders {
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import mx.messaging.messages.IMessage;
	import mx.rpc.AsyncToken;
	
	public class AsyncTokenMock extends AsyncToken {
		private var timer: Timer = new Timer(50);
		
		public function AsyncTokenMock(message:IMessage=null) {
			super(message);
//			timer.addEventListener(TimerEvent.TIMER, doTimer);
		}
		
//		protected function 
	}
}