package net.twerno.eduClient.helper {
	import mx.collections.ArrayCollection;
	
	import net.twerno.eduClient.consts.Const;

	public class UserHelper {
		
		public static function getRoles():ArrayCollection {
			var result : ArrayCollection = new ArrayCollection();
			result.addItem(Const.ROLE_ADMIN);
			result.addItem(Const.ROLE_NAUCZYCIEL);
			result.addItem(Const.ROLE_UCZEN);
			return result;
		}
	}
}