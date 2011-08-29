package net.twerno.eduClient.rpc.tokens {
	import mx.rpc.AsyncToken;
	
	import net.twerno.eduClient.RO.user.Account;
	
	public class AccountToken extends RpcToken {
		
		public var account:Account;
		
		public function AccountToken(asyncToken:AsyncToken, account:Account) {
			super(asyncToken);
			this.account = account;
		}
	}
}