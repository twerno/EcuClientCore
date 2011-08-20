package net.twerno.eduClient.errors {
	public class ENiezalogowany extends Error {
		public function ENiezalogowany(message:*="", id:*=0) {
			super(message, id);
		}
	}
}